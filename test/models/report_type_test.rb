require 'test_helper'

class ReportTypeTest < ActiveSupport::TestCase
  test 'test report_type' do
    assert_equal ReportType.create(name: 'name').valid?, true
  end

  test 'test report_type empty name' do
    assert_equal ReportType.create(name: nil).valid?, false
  end

  test 'test report_type unique name' do
    assert_equal ReportType.create(name: 'name').valid?, true
    assert_equal ReportType.create(name: 'name').valid?, false
  end
end
