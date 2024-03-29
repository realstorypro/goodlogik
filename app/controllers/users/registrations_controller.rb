# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout 'layouts/auth'

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :load_country_codes, only: %i[edit update]
  before_action :check_for_verified_session, only: %i[edit update]

  def create
    super do |created_user|
      unless created_user.id.nil?
        # todo: re-enable tracking
        #
        #track(
        #  event: 'User Registered',
        #  props: {
        #    username: created_user.username,
        #    email: created_user.email
        #  }
        #)

        if created_user.newsletter == '1'
          #track(
          #  event: 'Subscription Created',
          #  props: {
          #    email: created_user.email,
          #    location: 'signup'
          #  }
          #)
        end
      end
    end
  end

  def update
    # we want to un-verify the session if the phone number has changed
    pre_update_phone_number = resource.phone_number
    super do |updated_user|
      session[:verified] = false if updated_user.phone_number != pre_update_phone_number
    end
  end

  private

  def check_for_verified_session
    # redirect_to root_path unless session[:verified]
  end

  def configure_permitted_parameters
    added_attrs = %i[username email password password_confirmation remember_me newsletter phone_number country]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def load_country_codes
    country_codes = IsoCountryCodes.for_select

    country_codes.sort_by! { |m| m[0].downcase }

    us_index = country_codes.index { |country| country[0] == 'United States of America' }
    us_country = country_codes.delete_at(us_index)
    country_codes.unshift us_country
    @country_codes = country_codes
  end
end
