package pack.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.CartBean;
import pack.controller.ProductBean;
import pack.utility.Pagination;

@Repository
public class ProductImpl implements ProductInter {

	@Autowired
	private ProductAnnoInter productAnnoInter;

	// 샤무드 랜덤 index
	@Override
	public ArrayList<ProductDto> selectRndChamude() {
		return productAnnoInter.selectRndChamude();
	}

	// 스웨이드 랜덤 인덱스
	@Override
	public ArrayList<ProductDto> selectRndSuede() {
		return productAnnoInter.selectRndSuede();
	}

	// 합성피혁 랜덤 인덱스
	@Override
	public ArrayList<ProductDto> selectRndPu() {
		return productAnnoInter.selectRndPu();
	}

	// 샤무드 끈 인덱스
	@Override
	public ArrayList<ProductDto> selectRndTassel() {
		return productAnnoInter.selectRndTassel();
	}

	// 샤무드 전체상품 수
	@Override
	public int countChamudeAll() {
		return productAnnoInter.countChamudeAll();
	}

	// 스웨이드 전체 상품 수
	@Override
	public int countSuedeAll() {
		return productAnnoInter.countSuedeAll();
	}

	// 합성피혁 전체 상품 수
	@Override
	public int countPuAll() {
		return productAnnoInter.countPuAll();
	}

	// 샤무드 끈 전체 상품수
	@Override
	public int countTasselAll() {
		return productAnnoInter.countTasselAll();
	}

	// 페이징 처리하는 메서드
	public ArrayList<ProductDto> chamudePaging(Pagination pagination) {
		return productAnnoInter.chamudePaging(pagination);
	}

	@Override
	public ArrayList<ProductDto> suedePaging(Pagination pagination) {
		return productAnnoInter.suedePaging(pagination);
	}

	@Override
	public ArrayList<ProductDto> puPaging(Pagination pagination) {
		return productAnnoInter.puPaging(pagination);
	}

	@Override
	public ArrayList<ProductDto> tasselPaging(Pagination pagination) {
		return productAnnoInter.tasselPaging(pagination);
	}
	
	@Override
	public ProductDto productDetail(ProductBean bean) {
		return productAnnoInter.productDetail(bean);
	}
	@Override
	public ArrayList<ProductDto> productNum(ProductBean bean) {
		return productAnnoInter.productNum(bean);
	}
	
	// 상품 번호를 바꾼다.
	@Override
	public String numChangeNo(CartBean bean) {
		return productAnnoInter.numChangeNo(bean);
	}
}
