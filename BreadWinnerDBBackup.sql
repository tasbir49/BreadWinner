--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.5

-- Started on 2019-02-23 23:35:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16412)
-- Name: Client; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Client" (
    "ClientID" integer NOT NULL,
    "Client Rating" numeric(4,0)
);


--
-- TOC entry 201 (class 1259 OID 16487)
-- Name: Client Ratings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Client Ratings" (
    "ClientID" integer NOT NULL,
    "ReviewerID" integer NOT NULL,
    "Comments" text,
    "Rating" integer
);


--
-- TOC entry 198 (class 1259 OID 16422)
-- Name: Cook; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Cook" (
    "CookID" integer NOT NULL,
    "Cook Rating" numeric(4,0)
);


--
-- TOC entry 202 (class 1259 OID 16505)
-- Name: Cook Rating; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Cook Rating" (
    "CookID" integer NOT NULL,
    "ReviewerID" integer NOT NULL,
    "Comments" text,
    "Rating" integer
);


--
-- TOC entry 199 (class 1259 OID 16443)
-- Name: Listing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Listing" (
    "ListingID" integer NOT NULL,
    "CookID" integer,
    "Food Name" text,
    "Price" numeric,
    "Location" text,
    "Image" text,
    active boolean
);


--
-- TOC entry 203 (class 1259 OID 16567)
-- Name: Listing Tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Listing Tags" (
    "ListingID" integer NOT NULL,
    "Tag" text NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 16456)
-- Name: Order; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Order" (
    "ClientID" integer NOT NULL,
    "ListingID" integer NOT NULL,
    "Status" text,
    "Time of Order" timestamp(4) without time zone,
    quantity integer
);


--
-- TOC entry 196 (class 1259 OID 16404)
-- Name: User; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."User" (
    "UserID" integer NOT NULL,
    "Password" text NOT NULL,
    "FName" text,
    "LName" text,
    "About" text
);


--
-- TOC entry 3845 (class 0 OID 16412)
-- Dependencies: 197
-- Data for Name: Client; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Client" VALUES (11, 7);
INSERT INTO public."Client" VALUES (12, 8);
INSERT INTO public."Client" VALUES (13, 8);
INSERT INTO public."Client" VALUES (14, 8);
INSERT INTO public."Client" VALUES (15, 9);
INSERT INTO public."Client" VALUES (4, 1);
INSERT INTO public."Client" VALUES (5, 3);
INSERT INTO public."Client" VALUES (6, 5);
INSERT INTO public."Client" VALUES (7, 7);
INSERT INTO public."Client" VALUES (8, 6);
INSERT INTO public."Client" VALUES (9, 5);
INSERT INTO public."Client" VALUES (10, NULL);
INSERT INTO public."Client" VALUES (1, 0);


--
-- TOC entry 3849 (class 0 OID 16487)
-- Dependencies: 201
-- Data for Name: Client Ratings; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3846 (class 0 OID 16422)
-- Dependencies: 198
-- Data for Name: Cook; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Cook" VALUES (1, 1);
INSERT INTO public."Cook" VALUES (2, 2);
INSERT INTO public."Cook" VALUES (3, 3);
INSERT INTO public."Cook" VALUES (11, 10);


--
-- TOC entry 3850 (class 0 OID 16505)
-- Dependencies: 202
-- Data for Name: Cook Rating; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Cook Rating" VALUES (11, 11, 'food was good, service was bad', 6);
INSERT INTO public."Cook Rating" VALUES (2, 1, 'this curry sucks', 2);


--
-- TOC entry 3847 (class 0 OID 16443)
-- Dependencies: 199
-- Data for Name: Listing; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Listing" VALUES (3, 1, 'sandwich', 5, 'bahen', 'greatest image 2018', false);
INSERT INTO public."Listing" VALUES (2, 2, 'Curry', 5, 'Robarts', 'greatest image 2018', true);
INSERT INTO public."Listing" VALUES (1, 11, 'Crispy Fried Chicken', 6, 'Bahen Center', 'greatest image 2018', true);


--
-- TOC entry 3851 (class 0 OID 16567)
-- Dependencies: 203
-- Data for Name: Listing Tags; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Listing Tags" VALUES (1, '');
INSERT INTO public."Listing Tags" VALUES (2, '');
INSERT INTO public."Listing Tags" VALUES (3, '');


--
-- TOC entry 3848 (class 0 OID 16456)
-- Dependencies: 200
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Order" VALUES (1, 2, 'Canceled', '2018-12-03 20:00:33', 1);
INSERT INTO public."Order" VALUES (10, 2, 'Pending', '2019-02-19 12:23:56', 1);


--
-- TOC entry 3844 (class 0 OID 16404)
-- Dependencies: 196
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" VALUES (1, 'yestan123', 'Sean', 'Geng', 'I like csc300. Instead of food, I  serve lessons');
INSERT INTO public."User" VALUES (2, 'asd123', 'Yeeee', 'Noooo', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (3, 'bestpassword', 'First', 'Notfirst', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (4, 'ahhhhhhh', 'Ray', 'Mond', 'im not as cool as tasbir');
INSERT INTO public."User" VALUES (5, 'leagueoflegends123', 'Mike', 'Ael', 'u may not know this but I actually think raymonds kinda cute');
INSERT INTO public."User" VALUES (6, 'nextbestpassword2018', 'Rib', 'Sat', 'dnomyar u kuf');
INSERT INTO public."User" VALUES (7, '1234', 'Bruce', 'Wayne', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (8, '1234', 'Clarke', 'Kent', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (9, '1234', 'Where''s', 'Waldo', '????????????????????????????????????????');
INSERT INTO public."User" VALUES (10, '1234', 'Barry', 'Alan', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (11, '3456', 'Clients
', 'Are11to15', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (12, '3456', 'xxx', 'tentacion', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (13, '3456', 'maple', 'story', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (14, '3456', 'runningoutof', 'names', 'I have no friends and am only doing this to impress women and John Stamos.');
INSERT INTO public."User" VALUES (15, '3456', 'finally', 'done', 'I have no friends and am only doing this to impress women and John Stamos.');


--
-- TOC entry 3708 (class 2606 OID 16494)
-- Name: Client Ratings Client Ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Client Ratings"
    ADD CONSTRAINT "Client Ratings_pkey" PRIMARY KEY ("ClientID", "ReviewerID");


--
-- TOC entry 3700 (class 2606 OID 16416)
-- Name: Client Client_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Client"
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY ("ClientID");


--
-- TOC entry 3710 (class 2606 OID 16512)
-- Name: Cook Rating Cook Rating_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Cook Rating"
    ADD CONSTRAINT "Cook Rating_pkey" PRIMARY KEY ("CookID", "ReviewerID");


--
-- TOC entry 3702 (class 2606 OID 16426)
-- Name: Cook Cook_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Cook"
    ADD CONSTRAINT "Cook_pkey" PRIMARY KEY ("CookID");


--
-- TOC entry 3712 (class 2606 OID 16574)
-- Name: Listing Tags Listing Tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Listing Tags"
    ADD CONSTRAINT "Listing Tags_pkey" PRIMARY KEY ("ListingID", "Tag");


--
-- TOC entry 3704 (class 2606 OID 16450)
-- Name: Listing Listing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Listing"
    ADD CONSTRAINT "Listing_pkey" PRIMARY KEY ("ListingID");


--
-- TOC entry 3706 (class 2606 OID 16463)
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY ("ClientID", "ListingID");


--
-- TOC entry 3698 (class 2606 OID 16411)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("UserID");


--
-- TOC entry 3713 (class 2606 OID 16417)
-- Name: Client ClientID References UserID; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Client"
    ADD CONSTRAINT "ClientID References UserID" FOREIGN KEY ("ClientID") REFERENCES public."User"("UserID");


--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 3713
-- Name: CONSTRAINT "ClientID References UserID" ON "Client"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT "ClientID References UserID" ON public."Client" IS 'ye';


--
-- TOC entry 3716 (class 2606 OID 16464)
-- Name: Order ClientID references ClientID in Client; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "ClientID references ClientID in Client" FOREIGN KEY ("ClientID") REFERENCES public."Client"("ClientID");


--
-- TOC entry 3718 (class 2606 OID 16495)
-- Name: Client Ratings ClientID references ClientID in Client; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Client Ratings"
    ADD CONSTRAINT "ClientID references ClientID in Client" FOREIGN KEY ("ClientID") REFERENCES public."Client"("ClientID");


--
-- TOC entry 3714 (class 2606 OID 16427)
-- Name: Cook CookID References UserID; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Cook"
    ADD CONSTRAINT "CookID References UserID" FOREIGN KEY ("CookID") REFERENCES public."User"("UserID");


--
-- TOC entry 3715 (class 2606 OID 16451)
-- Name: Listing CookID references CookID in Cook; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Listing"
    ADD CONSTRAINT "CookID references CookID in Cook" FOREIGN KEY ("CookID") REFERENCES public."Cook"("CookID");


--
-- TOC entry 3720 (class 2606 OID 16513)
-- Name: Cook Rating CookID references CookID in Cook; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Cook Rating"
    ADD CONSTRAINT "CookID references CookID in Cook" FOREIGN KEY ("CookID") REFERENCES public."Cook"("CookID");


--
-- TOC entry 3717 (class 2606 OID 16469)
-- Name: Order ListingID references ListingID in Listing; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "ListingID references ListingID in Listing" FOREIGN KEY ("ListingID") REFERENCES public."Listing"("ListingID");


--
-- TOC entry 3721 (class 2606 OID 16518)
-- Name: Cook Rating ReviewerID references ClientID in Client; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Cook Rating"
    ADD CONSTRAINT "ReviewerID references ClientID in Client" FOREIGN KEY ("ReviewerID") REFERENCES public."Client"("ClientID");


--
-- TOC entry 3719 (class 2606 OID 16500)
-- Name: Client Ratings ReviewerID references CookID in Cook; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Client Ratings"
    ADD CONSTRAINT "ReviewerID references CookID in Cook" FOREIGN KEY ("ReviewerID") REFERENCES public."Cook"("CookID");


--
-- TOC entry 3722 (class 2606 OID 16589)
-- Name: Listing Tags listingid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Listing Tags"
    ADD CONSTRAINT listingid FOREIGN KEY ("ListingID") REFERENCES public."Listing"("ListingID");


-- Completed on 2019-02-23 23:35:24

--
-- PostgreSQL database dump complete
--

