require 'spec_helper'

describe 'Add text in header' do
  it 'Check enter text in header' do
    docx = builder.build_doc_and_parse('asserts/js/docx/paragraph/text/add_text_in_header.js')
    expect(docx.notes.first.elements[1].nonempty_runs.first.text).to eq('header')
  end
end
