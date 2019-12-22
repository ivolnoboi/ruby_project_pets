require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  test 'test report' do
    re = ReportType.create(name: 'name')
    assert_equal Report.create(title: 'title', content: 'content', report_type: re).valid?, true
  end

  test 'test report empty title' do
    re = ReportType.create(name: 'name')
    assert_equal Report.create(title: nil, content: 'content', report_type: re).valid?, false
  end

  test 'test report empty content' do
    re = ReportType.create(name: 'name')
    assert_equal Report.create(title: 'title', content: nil, report_type: re).valid?, true
  end

  test 'test report empty report_type' do
    assert_equal Report.create(title: 'title', content: 'content', report_type: nil).valid?, false
  end
end
