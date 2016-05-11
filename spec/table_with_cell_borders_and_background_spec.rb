require 'bundler/setup'
require 'rspec'
require 'ooxml_parser'

describe 'Add table with cells with borders and background' do

  it 'Table with cell background: red' do
    docx = OoxmlParser::DocxParser.parse_docx('/home/ilya/Documents/temp_docx/table_with_cell_borders.docx')
    expect(docx.elements[1].rows.length).to eq(3)
    expect(docx.elements[1].rows.first.cells[1].properties.shd).to eq(OoxmlParser::Color.new(255,0,0))
  end

  it 'Table with cell borders: top, left, top, bottom' do
    docx = OoxmlParser::DocxParser.parse_docx('/home/ilya/Documents/temp_docx/table_with_cell_borders.docx')
    expect(docx.elements[1].rows.length).to eq(3)
    expect(docx.elements[1].rows[1].cells.first.properties.borders_properties.bottom.color).to eq(OoxmlParser::Color.new(0,255,0))
    expect(docx.elements[1].rows[1].cells.first.properties.borders_properties.bottom.sz).to eq(8.0)
    expect(docx.elements[1].rows[1].cells.first.properties.borders_properties.left.color).to eq(OoxmlParser::Color.new(0,0,255))
    expect(docx.elements[1].rows[1].cells.first.properties.borders_properties.left.sz).to eq(4.0)
    expect(docx.elements[1].rows[1].cells.first.properties.borders_properties.right.color).to eq(OoxmlParser::Color.new(0,0,255))
    expect(docx.elements[1].rows[1].cells.first.properties.borders_properties.right.sz).to eq(2.0)
    expect(docx.elements[1].rows[1].cells.first.properties.borders_properties.top.color).to eq(OoxmlParser::Color.new(0,255,0))
    expect(docx.elements[1].rows[1].cells.first.properties.borders_properties.top.sz).to eq(4.0)
  end
end



