package pack.model;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import pack.controller.CartBean;
import pack.controller.ProductBean;
import pack.utility.Pagination;

public interface ProductAnnoInter {
	// 샤무드(index)
	@Select("select * from product where prd_name like '%샤무드' order by rand() limit 4")
	public ArrayList<ProductDto> selectRndChamude();

	// 스웨이드(index)
	@Select("select * from product where prd_name like '%suede' order by rand() limit 4")
	public ArrayList<ProductDto> selectRndSuede();

	// 합성피혁(index)
	@Select("select * from product where prd_group>=15 and prd_group<=21 order by rand() limit 4")
	public ArrayList<ProductDto> selectRndPu();

	// 샤무드끈 (index)
	@Select("select * from product where prd_name like '%tassel%' order by rand() limit 4")
	public ArrayList<ProductDto> selectRndTassel();

	// 샤무드의 전체 상품수
	@Select("select count(distinct prd_name) from product where prd_name like '%샤무드'")
	public int countChamudeAll();

	// 스웨이드의 전체 상품수
	@Select("select count(distinct prd_name) from product where prd_name like '%suede'")
	public int countSuedeAll();

	// 합성피혁 전체상품수
	@Select("select count(distinct prd_name) from product where prd_group>=15 and prd_group<=21")
	public int countPuAll();

	// 샤무드끈 전체상품수
	@Select("select count(distinct prd_name) from product where prd_name like '%tassel%'")
	public int countTasselAll();

	// 샤무드 페이징
	@Select("select distinct prd_name, prd_msr, prd_quantity, prd_price,prd_group, img_header from product where prd_name like '%샤무드' limit #{start}, #{length}")
	public ArrayList<ProductDto> chamudePaging(Pagination pagination);

	// 스웨이드 페이징
	@Select("select distinct prd_name, prd_msr, prd_quantity, prd_price,prd_group, img_header from product where prd_name like '%suede' limit #{start}, #{length}")
	public ArrayList<ProductDto> suedePaging(Pagination pagination);

	// 합성피혁 페이징
	@Select("select distinct prd_name, prd_msr, prd_quantity, prd_price,prd_group, img_header from product where prd_group>=15 and prd_group<=21 limit #{start}, #{length}")
	public ArrayList<ProductDto> puPaging(Pagination pagination);

	// 샤무드끈 페이징
	@Select("select distinct prd_name, prd_msr, prd_quantity, prd_price,prd_group, img_header from product where prd_name like '%tassel%' limit #{start}, #{length}")
	public ArrayList<ProductDto> tasselPaging(Pagination pagination);

	// detail페이지 상품번호를 제외한 세부내용 보기
	@Select("select distinct prd_name, prd_msr, prd_quantity, prd_price,prd_group, img_header, img_description, img_option from product where prd_group = #{prd_group}")
	public ProductDto productDetail(ProductBean bean);
	
	// detail페이지의 상품번호를 구하는 sql문
	@Select("select prd_num from product where prd_group = #{prd_group}")
	public ArrayList<ProductDto> productNum(ProductBean bean);
	
	// prd_num과 prd_group을 이용하여 prd_no를 구하는 sql문
	@Select("select prd_no from product where prd_num = #{prd_num} and prd_group = #{prd_group}")
	public String numChangeNo(CartBean bean);
	
	
}
