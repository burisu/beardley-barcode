# encoding: utf-8
require 'helper'

class TestPrint < Test::Unit::TestCase

  def test_print_of_barcode_report
    barcode = Pathname.new(__FILE__).dirname.join("fixtures", "barcode.jrxml")
    assert barcode.exist?
    report = Beardley::Report.new(barcode)
    assert_equal Pathname, report.source_file.class
    assert_equal Pathname, report.object_file.class
    report.to_pdf
    report.to_odt
    report.to_ods
    report.to_csv
    report.to_docx
    report.to_xlsx
  end

  # TODO Test parameters

end
