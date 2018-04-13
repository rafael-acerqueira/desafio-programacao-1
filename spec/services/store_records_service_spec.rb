require 'rails_helper'

describe StoreRecordsService do
  context ".call" do

    subject { described_class.new('./spec/fixtures/example_input.tab') }

    it do
      expect(subject).to respond_to(:call)
    end
  end
end
