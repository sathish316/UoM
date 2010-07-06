require 'spec_helper'

describe "Unit of measurement" do

  describe "Fixnum conversion to meter" do

    it "should convert 1 kilometer" do
      1.kilometer.should == 1000.0
      1.km.should == 1000.0
    end

    it "should convert 1 meter" do
      1.meter.should == 1
      1.m.should == 1
    end

    it "should convert 1 decimeter" do
      1.decimeter.should == 0.1
    end

    it "should convert 1 centimeter" do
      1.centimeter.should == 0.01
      1.cm.should == 0.01
    end

    it "should convert 1 millimeter" do
      1.millimeter.should == 0.001
      1.mm.should == 0.001
    end

    it "should convert 1 micrometer" do
      1.micrometer.should == 0.000001
    end

    it "should convert 1 micron" do
      1.micron.should == 0.000001
    end

    it "should convert 1 nanometer" do
      1.nanometer.should == 0.000000001
      1.nm.should == 0.000000001
    end

    it "should convert 1 angstrom" do
      1.angstrom.should == 0.000000000001
    end
  end

  describe "x units of Fixnum to meter" do
    it "should convert 5 kilometer" do
      5.kilometer.should == 5000.0
      5.km.should == 5000.0
    end

    it "should convert 5 meter" do
      5.meter.should == 5
      5.m.should == 5
    end

    it "should convert 5 decimeter" do
      5.decimeter.should == 0.5
    end

    it "should convert 5 centimeter" do
      5.centimeter.should == 0.05
      5.cm.should == 0.05
    end

    it "should convert 5 millimeter" do
      5.millimeter.should == 0.005
      5.mm.should == 0.005
    end

    it "should convert 5 micrometer" do
      5.micrometer.should be_close(0.000005, 0.0000001)
    end

    it "should convert 5 micron" do
      5.micron.should be_close(0.000005, 0.0000001)
    end

    it "should convert 5 nanometer" do
      5.nanometer.should == 0.000000005
      5.nm.should == 0.000000005
    end

    it "should convert 5 angstrom" do
      5.angstrom.should == 0.000000000005
    end

  end

  describe "Float conversion to meter" do

    it "should convert 7.5 kilometer" do
      (7.5).kilometer.should == 1000.0 * 7.5
      (7.5).km.should == 1000.0 * 7.5
    end

    it "should convert 7.5 meter" do
      (7.5).meter.should == 1 * 7.5
      (7.5).m.should == 1 * 7.5
    end

    it "should convert 7.5 decimeter" do
      (7.5).decimeter.should == 0.1 * 7.5
    end

    it "should convert 7.5 centimeter" do
      (7.5).centimeter.should == 0.01 * 7.5
      (7.5).cm.should == 0.01 * 7.5
    end

    it "should convert 7.5 millimeter" do
      (7.5).millimeter.should == 0.001 * 7.5
      (7.5).mm.should == 0.001 * 7.5
    end

    it "should convert 7.5 micrometer" do
      (7.5).micrometer.should be_close(0.000001 * 7.5, 0.0000001)
    end

    it "should convert 7.5 micron" do
      (7.5).micron.should be_close(0.000001 * 7.5, 0.0000001)
    end

    it "should convert 7.5 nanometer" do
      (7.5).nanometer.should == 0.000000001 * 7.5
      (7.5).nm.should == 0.000000001 * 7.5
    end

    it "should convert 7.5 angstrom" do
      (7.5).angstrom.should == 0.000000000001 * 7.5
    end

  end

  describe "conversion from one unit to another" do

    describe "from kilometer" do
      1.kilometer.to_kilometer.should == 1
      1.kilometer.to_meter.should == 1000
      1.kilometer.to_decimeter.should == 10_000
      1.kilometer.to_centimeter.should == 100_000
      1.kilometer.to_millimeter.should == 1_000_000
      1.kilometer.to_micrometer.should == 1_000_000_000
      #(1.kilometer.to_nanometer - 1e12).should == 0.0
      1.kilometer.to_angstrom.should == 1_000_000_000_000_000
    end

    describe "from centimeter" do
      50.cm.to_km.should == 0.0005
      10.cm.to_m.should == 0.1
      1.cm.to_mm.should == 10
    end
  end
end
