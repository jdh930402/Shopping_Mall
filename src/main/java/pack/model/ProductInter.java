package pack.model;

import java.util.ArrayList;

import pack.controller.CartBean;
import pack.controller.ProductBean;
import pack.utility.Pagination;

public interface ProductInter {
	// 샤무드 index
	public ArrayList<ProductDto> selectRndChamude();

	// 스웨이드 index
	public ArrayList<ProductDto> selectRndSuede();

	// 합성피혁 index
	public ArrayList<ProductDto> selectRndPu();

	// 샤무드 끈 index
	public ArrayList<ProductDto> selectRndTassel();

	// 샤무드 상품 전체 리스트 수
	public int countChamudeAll();

	// 스웨이드 상품 전체 리스트 수
	public int countSuedeAll();

	// 합성피혁 상품 전체 리스트수
	public int countPuAll();

	// 샤무드끈 상품 전체리스트수
	public int countTasselAll();

	// 샤무드 상품 페이징 처리
	public ArrayList<ProductDto> chamudePaging(Pagination pagination);

	// 스웨이드 상품 페이징
	public ArrayList<ProductDto> suedePaging(Pagination pagination);

	public ArrayList<ProductDto> puPaging(Pagination pagination);

	public ArrayList<ProductDto> tasselPaging(Pagination pagination);
	
	public ProductDto productDetail(ProductBean bean);
	
	public ArrayList<ProductDto> productNum(ProductBean bean);
	
	public String numChangeNo(CartBean bean);
}
