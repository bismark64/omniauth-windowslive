require 'spec_helper'
require 'omniauth-Windowslive'

describe OmniAuth::Strategies::Windowslive do
  subject do
    OmniAuth::Strategies::Windowslive.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct Windowslive site' do
      expect(subject.client.site).to eq("https://login.live.com")
    end

    it 'should have the correct authorization url' do
      expect(subject.client.options[:authorize_url]).to eq("/oauth20_authorize.srf")
    end

    it 'should have the correct token url' do
      expect(subject.client.options[:token_url]).to eq('/oauth20_token.srf')
    end

    describe "overrides" do
      it 'should allow overriding the site' do
        @options = {:client_options => {'site' => 'https://example.com'}}
        expect(subject.client.site).to eq('https://example.com')
      end

      it 'should allow overriding the authorize_url' do
        @options = {:client_options => {'authorize_url' => 'https://example.com'}}
        expect(subject.client.options[:authorize_url]).to eq('https://example.com')
      end

      it 'should allow overriding the token_url' do
        @options = {:client_options => {'token_url' => 'https://example.com'}}
        expect(subject.client.options[:token_url]).to eq('https://example.com')
      end
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      expect(subject.callback_path).to eq('/auth/windowslive/callback')
    end
  end
end
