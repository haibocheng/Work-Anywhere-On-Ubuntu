require 'yaml'
module WorkAnyWhere

  def wa_soft_base= path
    @soft_base = path
  end

  def wa_soft_base
    @soft_base
  end

  def wa_load_config( file=nil )
      config = YAML::load( file )
      envcfg = config[:global]
      unless envcfg.nil?
          @soft_base = envcfg[:soft_base] if envcfg[:soft_base]
          @cfg_base = envcfg[:cfg_base] unless envcfg[:cfg_base]
      end
  end

  def wa_install( soft )
  end

  def wa_installed?( soft )
    true
  end

  def wa_uninstall( soft )
  end

end
