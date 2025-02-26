# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Define an application-wide content security policy.
# See the Securing Rails Applications Guide for more information:
# https://guides.rubyonrails.org/security.html#content-security-policy-header

Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self, :https, :http, :ws, :wss
    policy.font_src :self, :https, :http, :data
    policy.img_src :self, :https, :http, :data, :blob
    policy.media_src :self, :https, :http, :data, :blob
    policy.object_src :none
    policy.script_src :self, :https, :http, :unsafe_inline, :unsafe_eval
    policy.style_src :self, :https, :http, :unsafe_inline
    policy.style_src_attr :unsafe_inline
    policy.connect_src :self, :https, :http, :ws, :wss
    policy.report_uri "/csp-violation-report"
  end

  # Initially run in report-only mode to avoid breaking functionality
  config.content_security_policy_report_only = true
end
