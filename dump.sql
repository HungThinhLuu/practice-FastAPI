--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.0 (Debian 16.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: information; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.information (
    index bigint,
    "Tên đầy đủ" text,
    "Tên viết tắt" text,
    "Tên tiếng anh" text,
    "Địa chỉ" text,
    "Điện thoại" text,
    "Fax" text,
    "Giấy chứng nhận ĐKKD/Giấy phép thành lập" text,
    "Vốn điều lệ" text,
    "Vốn thực góp" text,
    id text
);


ALTER TABLE public.information OWNER TO postgres;

--
-- Name: metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metadata (
    index bigint,
    abbreviation text,
    full_name text,
    address text,
    url text,
    id text
);


ALTER TABLE public.metadata OWNER TO postgres;

--
-- Name: security; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.security (
    index bigint,
    security_code text,
    "ISINs" text,
    security_name text,
    security_type text,
    trading_market text,
    administration_place text,
    status text,
    security_url text,
    id text
);


ALTER TABLE public.security OWNER TO postgres;

--
-- Data for Name: information; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.information (index, "Tên đầy đủ", "Tên viết tắt", "Tên tiếng anh", "Địa chỉ", "Điện thoại", "Fax", "Giấy chứng nhận ĐKKD/Giấy phép thành lập", "Vốn điều lệ", "Vốn thực góp", id) FROM stdin;
0	Công ty cổ phần Quản Lý quỹ Đầu tư Dragon Capital Việt Nam	DCVFM	DRAGON CAPITAL VIETFUND MANAGEMENT	Tầng 15, Tòa nhà Mê Linh Point, 02 Ngô Đức Kế, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh, Việt Nam.	28.38251488	28.38251489	Số 45/UBCK-GP ngày 08/01/2009	3.443.012.000.000 đồng	3.443.012.000.000 đồng	2747
1	Công ty  TNHH Quản lý Quỹ EASTSPRING INVESTMENTS	EIFMC	Eastspring Investments Fund Management Limited Liability Company	Tầng 23, số 37 Tôn Đức Thắng, Quận 1,  Tp HCM	(84-8)39101660	(84-8)39105613	25/GPĐC-UBCK  do UBCKNN cấp ngày 09/12/2011	500.000.000.000 đồng	500.000.000.000 đồng	936
2	Công ty TNHH Quản lý Quỹ KIM Việt Nam	KIM	KIM Vietnam Fund Management Co., Ltd.	Phòng 1807-1808, toà nhà mPlaza Sài Gòn, số 39 Lê Duẩn, phường Bến Nghé, Quận 1, TP HCM.	028 3824 2220	028 3824 2225	số	55.000.000.000 đồng	55.000.000.000 đồng	7176
3	Công ty TNHH Quản lý quỹ Mirae Asset (Việt Nam)	MAFM	Mirae Asset (Vietnam) Fund management Company Limited	Tầng 38, Keangnam Hanoi Landmark Tower, Khu E6, KĐTM Cầu Giấy, P.Mễ Trì, Q. Nam Từ Liêm, Hà Nội	024.3564.0666	024.3564.0555	Số 56/GP-UBCK ngày 20/8/2019	26.000.000.000 đồng	26.000.000.000 đồng	2794
4	Công ty TNHH Quản Lý Quỹ MANULIFE Việt Nam	MVFM Co.,LTD	Công ty TNHH Quản Lý Quỹ MANULIFE Việt Nam	Lầu 7, Manulife Plaza, 75 Hoàng Văn Thái, Phường Tân Phú, Q.7	8.54166777	8.54160761	4104000117\r\nSở KH&ĐT Tp.HCM\r\n6/10/2005	214.095.300.000 đồng	214.095.300.000 đồng	874
5	Công ty TNHH Quản lý quỹ SSI	SSIAM	SSI Asset Management Company Limited	Tầng 5, 1C Ngô Quyền, Phường Lý Thái Tổ, Quận Hoàn Kiếm, Hà Nội	(84.24) 39366321	(84.24) 39366337	Số 19/UBCK-GP ngày 03/08/2007	699.000.000.000 đồng	699.000.000.000 đồng	1874
6	Công ty cổ phần Quản lý quỹ Kỹ Thương	TCC	Techcom Capital Joint Stock Company	Tầng 10, 191 Phố  Bà Triệu, Phường Lê Đại Hành, Quận Hai Bà  Trưng, Hà Nội	(84-24) 39446368	(84-24) 39446583	Số 40/UBCK-GP ngày 21/10/2008	40.000.000.000 đồng	40.000.000.000 đồng	2100
7	Công ty Cổ phần Quản lý Quỹ Thiên Việt	TVAM	Thien Viet Assets Management Joint Stock Company	Lầu 9, tòa nhà  Bitexco Nam Long, 63A Võ Văn Tần, phường Võ Thị Sáu, quận 3, TP. Hồ Chí Minh	28.6299209	28.62992103	15/UBCK-GPHĐQLQ ngày 28/12/2006	125.000.000.000 đồng	125.000.000.000 đồng	2092
8	Công ty cổ phần Quản Lý Quỹ VinaCapital	VCFM	VinaCapital Fund Management Joint Stock Company	Lầu 17, Tòa nhà Sun Wah, 115 Nguyễn Huệ, Quận 1, Tp. Hồ Chí Minh, Việt Nam.	(84-28) 3821 9930	(84-28) 3821 9931	Số 31/UBCK-GP  do UBCKNN cấp ngày 14/04/2008	60.000.000.000 đồng	60.000.000.000 đồng	2766
9	Công ty TNHH Một thành viên Quản lý Quỹ ACB	\N	ACB Capital Manegement Company Limited	Lầu 1, tòa nhà ACB 444A-446 Cách Mạng Tháng Tám, Phường 11, Quận 3, Tp. HCM	84-8.62905989	84-8.62905987	số 41/UBCK-GP do UBCKNN cấp lần đầu ngày 28/10/2008, giấy phép điều chỉnh số 54/UBCK-GP do UBCKNN cấp ngày 02/12/2009	240.080.000.000 đồng	240.080.000.000 đồng	1380
10	Công ty TNHH MTV Quản lý quỹ đầu tư chứng khoán I.P.A	\N	I.P.A Securities Investment Fund Management Limited Company	Số 1 Nguyễn Thượng Hiền, quận Hai Bà Trưng, thành phố Hà Nội.	024.3941.0510	024.3941.0500	số	52.000.000.000 đồng	52.000.000.000 đồng	6598
11	Công ty cổ phần Quản lý Quỹ đầu tư FPT	\N	FPT Fund Management Joint Stock Company	Tầng 7, khối 17 tầng, toà FPT Tower, số 10, phố Phạm Văn Bạch, phường Dịch Vọng, quận Cầu Giấy, thành phố Hà Nội.	(84)24 7300 1313	(84)24 3715 2834	số	60.000.000.000 đồng	60.000.000.000 đồng	10108
12	Công ty TNHH Quản lý quỹ Bảo Việt	\N	BaoViet Fund Management Limited Company	Tầng 5, số 08 Lê Thái Tổ, phường Hàng Trống, quận Hoàn Kiếm, thành phố Hà Nội	024 39289589	024 39289590	số	1.000.000.000.000 đồng	1.000.000.000.000 đồng	10608
\.


--
-- Data for Name: metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.metadata (index, abbreviation, full_name, address, url, id) FROM stdin;
0	DCVFM	DRAGON CAPITAL VIETFUND MANAGEMENT	Level 15, Melinh Point Building, 2 Ngo Duc Ke, District 1, Ho Chi Minh City, Vietnam	https://vsd.vn/qlqd/2747	2747
1	EIFMC	Eastspring Investments Fund Management Limited Liability Company	Sai Gon Trade Centre, 37 Ton Duc Thang, District 1, Hochiminh City	https://vsd.vn/qlqd/936	936
2	KIM	KIM Vietnam Fund Management Co., Ltd.	Rooms 1807 and 1808, mPlaza Sai Gon Building, No.39 Le Duan, Ben Nghe ward, District 1, Hochiminh City	https://vsd.vn/qlqd/7176	7176
3	MAFM	Mirae Asset (Vietnam) Fund management Company Limited	Level 38, Keangnam Hanoi Landmark Tower, Area E6, Cau Giay New Urban Area, Me Tri ward, Nam Tu Liem district, Hanoi	https://vsd.vn/qlqd/2794	2794
4	MVFM Co.,LTD	Công ty TNHH Quản Lý Quỹ MANULIFE Việt Nam	FL.7, Manulife Plaza Building, 75 Hoang Van Thai, Tan Phu Ward, District 7, Hochiminh City	https://vsd.vn/qlqd/874	874
5	SSIAM	SSI Asset Management Company Limited	Level 5, 1C Ngo Quyen, Ly Thai To ward, Hoan Kiem district, Hanoi	https://vsd.vn/qlqd/1874	1874
6	TCC	Techcom Capital Joint Stock Company	Level 10, 191 Ba Trieu Street, Le Dai Hanh Ward, Hai Ba Trung District, Hanoi	https://vsd.vn/qlqd/2100	2100
7	TVAM	Thien Viet Assets Management Joint Stock Company	Level 9, Bitexco Nam Long Building, 63A Vo Van Tan, Ward 6, District 3, Ho Chi Minh City	https://vsd.vn/qlqd/2092	2092
8	VCFM	VinaCapital Fund Management Joint Stock Company	Level 17, Sun Wah Building, 115 Nguyen Hue, district 1, Hochiminh city	https://vsd.vn/qlqd/2766	2766
9	\N	ACB Capital Manegement Company Limited	1st Floor, ACB Building, 444A-446 Cach Mang Thang Tam, Ward 11, Dist 3, Hochiminh City;	https://vsd.vn/qlqd/1380	1380
10	\N	I.P.A Securities Investment Fund Management Limited Company	No. 1 Nguyen Thuong Hien, Hai Ba Trung district, Hanoi	https://vsd.vn/qlqd/6598	6598
11	\N	FPT Fund Management Joint Stock Company	Level 7, 17th floor block, FPT Tower, No. 10, Pham Van Bach street, Dich Vong ward, Cau Giay district, Hanoi city.	https://vsd.vn/qlqd/10108	10108
12	\N	BaoViet Fund Management Limited Company	5th floor, no. 8 Le Thai To, Hang Trong ward, Hoan Kiem district, Hanoi	https://vsd.vn/qlqd/10608	10608
\.


--
-- Data for Name: security; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.security (index, security_code, "ISINs", security_name, security_type, trading_market, administration_place, status, security_url, id) FROM stdin;
0	E1VFVN30	VN0E1VFVN306	Chứng chỉ Quỹ ETF DCVFMVN30	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/2464	2747
1	FUEDCMID	VN0FUEDCMID9	Chứng chỉ Quỹ ETF DCVFMVNMIDCAP	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/26849	2747
2	FUEVFVND	VN0FUEVFVND5	Chứng chỉ Quỹ ETF DCVFMVN DIAMOND	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/10791	2747
3	VFMVF1	VN000VFMVF11	Chứng chỉ Quỹ đầu tư chứng khoán Việt Nam	Chứng chỉ quỹ	HOSE	Chi nhánh	Hủy đăng ký	https://vsd.vn/s-detail/1385	2747
4	VFMVF4	VN000VFMVF45	Chứng chỉ Quỹ đầu tư Doanh nghiệp Hàng đầu Việt Nam	Chứng chỉ quỹ	HOSE	Chi nhánh	Hủy đăng ký	https://vsd.vn/s-detail/1735	2747
5	VFMVFA	VN000VFMVFA5	Chứng chỉ Quỹ đầu tư Năng động Việt Nam	Chứng chỉ quỹ	HOSE	Chi nhánh	Hủy đăng ký	https://vsd.vn/s-detail/615	2747
6	PRUBF1	VN000PRUBF19	Chứng chỉ Quỹ đầu tư cân bằng Prudential	Chứng chỉ quỹ	HOSE	Chi nhánh	Hủy đăng ký	https://vsd.vn/s-detail/881	936
7	FUEKIV30	VN0FUEKIV304	Chứng chỉ Quỹ ETF KIM GROWTH VN30	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/22485	7176
8	FUEKIVFS	VN0FUEKIVFS6	Chứng chỉ Quỹ ETF KIM GROWTH VNFINSELECT	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/27359	7176
9	FUEMAV30	VN0FUEMAV307	Chứng chỉ Quỹ ETF MAFM VN30	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/12252	2794
10	FUEMAVND	VN0FUEMAVND5	Chứng chỉ Quỹ ETF MAFM VNDIAMOND	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/29695	2794
11	MAFPF1	VN000MAFPF14	Chứng chỉ quỹ đầu tư tăng trưởng Manulife	Chứng chỉ quỹ	HOSE	Chi nhánh	Hủy đăng ký	https://vsd.vn/s-detail/819	874
12	E1SSHN30	VN0E1SSHN304	Chứng chỉ quỹ Quỹ ETF SSIAM HNX30	Chứng chỉ quỹ	HNX	Trụ sở chính	Hủy đăng ký	https://vsd.vn/s-detail/2556	1874
13	FUESSV30	VN0FUESSV306	Chứng chỉ Quỹ ETF SSIAM VN30	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/11391	1874
14	FUESSV50	VN0FUESSV504	Chứng chỉ quỹ ETF SSIAM VNX50	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/5891	1874
15	FUESSVFL	VN0FUESSVFL3	Chứng chỉ Quỹ ETF SSIAM VNFIN LEAD	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/10571	1874
16	FUCVREIT	VN0FUCVREIT6	Chứng chỉ Quỹ Đầu tư Bất động sản Techcom Việt Nam	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/4211	2100
17	FUCTVGF1	VN0FUCTVGF13	Chứng chỉ Quỹ Đầu tư Tăng trưởng TVAM	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hủy đăng ký	https://vsd.vn/s-detail/4173	2092
18	FUCTVGF2	VN0FUCTVGF21	Quỹ Đầu tư Tăng trưởng Thiên Việt 2	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hủy đăng ký	https://vsd.vn/s-detail/6491	2092
19	FUCTVGF3	VN0FUCTVGF39	Quỹ Đầu Tư Tăng Trưởng Thiên Việt 3	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/20765	2092
20	FUCTVGF4	VN0FUCTVGF47	Chứng chỉ Quỹ Đầu Tư Tăng Trưởng Thiên Việt 4	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/26323	2092
21	FUEVN100	VN0FUEVN1002	Chứng chỉ Quỹ ETF VINACAPITALVN100	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/11091	2766
22	ASIAGF	VN000ASIAGF1	Chứng chỉ Quỹ đầu tư tăng trưởng ACB	Chứng chỉ quỹ	HOSE	Chi nhánh	Hủy đăng ký	https://vsd.vn/s-detail/1947	1380
23	FUEIP100	VN0FUEIP1007	Chứng chỉ Quỹ ETF IPAAM VN100	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/20749	6598
24	FUEFCV50	VN0FUEFCV505	Chứng chỉ Quỹ ETF FPT CAPITAL VNX50	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/30049	10108
25	FUEBFVND	VN0FUEBFVND7	Chứng chỉ quỹ ETF BVFVN DIAMOND	Chứng chỉ quỹ	HOSE	Trụ sở chính	Hiệu lực	https://vsd.vn/s-detail/31455	10608
\.


--
-- Name: ix_information_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_information_index ON public.information USING btree (index);


--
-- Name: ix_metadata_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_metadata_index ON public.metadata USING btree (index);


--
-- Name: ix_security_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_security_index ON public.security USING btree (index);


--
-- Name: TABLE information; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.information TO fastapi;


--
-- Name: TABLE metadata; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.metadata TO fastapi;


--
-- Name: TABLE security; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.security TO fastapi;


--
-- PostgreSQL database dump complete
--

