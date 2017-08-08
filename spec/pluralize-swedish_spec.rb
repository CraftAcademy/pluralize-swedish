require 'spec_helper'

describe 'PluralizeSwedish' do
    it '"skog"' do
      expect(PluralizeSwedish.pluralize('skog')).to eq 'skogar'
    end

    it '"flicka"' do
      expect(PluralizeSwedish.pluralize('flicka')).to eq 'flickor'
    end

    it '"hand"' do
      expect(PluralizeSwedish.pluralize('hand')).to eq 'händer'
    end

    it 'uses String#swedish_pluralize' do
      expect('huvud'.swedish_pluralize).to eq 'huvuden'
    end
end
