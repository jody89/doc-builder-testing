require 'spec_helper'
describe 'ApiSchemeColor section tests' do
  it 'ApiSchemeColor | GetClassType method' do
    xlsx = builder.build_and_parse('asserts/js/xlsx/smoke/api_scheme_color/get_class_type.js')
    expect(xlsx.worksheets.first.rows.first.cells[1].text).to eq('schemeColor')
  end
end
