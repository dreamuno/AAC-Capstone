--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO aaadb;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO aaadb;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO aaadb;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO aaadb;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO aaadb;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO aaadb;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO aaadb;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO aaadb;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO aaadb;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO aaadb;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO aaadb;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO aaadb;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO aaadb;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO aaadb;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO aaadb;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO aaadb;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO aaadb;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO aaadb;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO aaadb;

--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public.django_summernote_attachment (
    id integer NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO aaadb;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO aaadb;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: makeReports_announcement; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_announcement" (
    id integer NOT NULL,
    text character varying(2000) NOT NULL,
    expiration date NOT NULL,
    creation timestamp with time zone NOT NULL
);


ALTER TABLE public."makeReports_announcement" OWNER TO aaadb;

--
-- Name: makeReports_announcement_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_announcement_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_announcement_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_announcement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_announcement_id_seq" OWNED BY public."makeReports_announcement".id;


--
-- Name: makeReports_assessment; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_assessment" (
    id integer NOT NULL,
    title character varying(300) NOT NULL,
    "domainExamination" boolean NOT NULL,
    "domainProduct" boolean NOT NULL,
    "domainPerformance" boolean NOT NULL,
    "directMeasure" boolean NOT NULL,
    "numberOfUses" integer NOT NULL,
    CONSTRAINT "makeReports_assessment_numberOfUses_check" CHECK (("numberOfUses" >= 0))
);


ALTER TABLE public."makeReports_assessment" OWNER TO aaadb;

--
-- Name: makeReports_assessment_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_assessment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_assessment_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_assessment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_assessment_id_seq" OWNED BY public."makeReports_assessment".id;


--
-- Name: makeReports_assessmentaggregate; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_assessmentaggregate" (
    id integer NOT NULL,
    aggregate_proficiency integer NOT NULL,
    met boolean NOT NULL,
    "assessmentVersion_id" integer NOT NULL,
    override boolean NOT NULL,
    CONSTRAINT "makeReports_assessmentaggregate_aggregate_proficiency_check" CHECK ((aggregate_proficiency >= 0))
);


ALTER TABLE public."makeReports_assessmentaggregate" OWNER TO aaadb;

--
-- Name: makeReports_assessmentaggregate_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_assessmentaggregate_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_assessmentaggregate_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_assessmentaggregate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_assessmentaggregate_id_seq" OWNED BY public."makeReports_assessmentaggregate".id;


--
-- Name: makeReports_assessmentdata; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_assessmentdata" (
    id integer NOT NULL,
    "numberStudents" integer NOT NULL,
    "overallProficient" integer NOT NULL,
    "assessmentVersion_id" integer NOT NULL,
    "dataRange" character varying(500) NOT NULL,
    CONSTRAINT "makeReports_assessmentdata_numberStudents_check" CHECK (("numberStudents" >= 0)),
    CONSTRAINT "makeReports_assessmentdata_overallProficient_check" CHECK (("overallProficient" >= 0))
);


ALTER TABLE public."makeReports_assessmentdata" OWNER TO aaadb;

--
-- Name: makeReports_assessmentdata_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_assessmentdata_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_assessmentdata_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_assessmentdata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_assessmentdata_id_seq" OWNED BY public."makeReports_assessmentdata".id;


--
-- Name: makeReports_assessmentsupplement; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_assessmentsupplement" (
    id integer NOT NULL,
    supplement character varying(100) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL
);


ALTER TABLE public."makeReports_assessmentsupplement" OWNER TO aaadb;

--
-- Name: makeReports_assessmentsupplement_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_assessmentsupplement_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_assessmentsupplement_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_assessmentsupplement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_assessmentsupplement_id_seq" OWNED BY public."makeReports_assessmentsupplement".id;


--
-- Name: makeReports_assessmentversion; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_assessmentversion" (
    id integer NOT NULL,
    date date NOT NULL,
    description character varying(1000) NOT NULL,
    "finalTerm" boolean NOT NULL,
    "where" character varying(500) NOT NULL,
    "allStudents" boolean NOT NULL,
    "sampleDescription" character varying(500),
    frequency character varying(500) NOT NULL,
    threshold character varying(500) NOT NULL,
    target integer NOT NULL,
    assessment_id integer NOT NULL,
    report_id integer NOT NULL,
    "changedFromPrior" boolean NOT NULL,
    slo_id integer NOT NULL,
    number integer NOT NULL,
    "frequencyChoice" character varying(100) NOT NULL,
    CONSTRAINT "makeReports_assessmentversion_number_check" CHECK ((number >= 0)),
    CONSTRAINT "makeReports_assessmentversion_target_check" CHECK ((target >= 0))
);


ALTER TABLE public."makeReports_assessmentversion" OWNER TO aaadb;

--
-- Name: makeReports_assessmentversion_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_assessmentversion_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_assessmentversion_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_assessmentversion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_assessmentversion_id_seq" OWNED BY public."makeReports_assessmentversion".id;


--
-- Name: makeReports_assessmentversion_supplements; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_assessmentversion_supplements" (
    id integer NOT NULL,
    assessmentversion_id integer NOT NULL,
    assessmentsupplement_id integer NOT NULL
);


ALTER TABLE public."makeReports_assessmentversion_supplements" OWNER TO aaadb;

--
-- Name: makeReports_assessmentversion_supplements_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_assessmentversion_supplements_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_assessmentversion_supplements_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_assessmentversion_supplements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_assessmentversion_supplements_id_seq" OWNED BY public."makeReports_assessmentversion_supplements".id;


--
-- Name: makeReports_college; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_college" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public."makeReports_college" OWNER TO aaadb;

--
-- Name: makeReports_college_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_college_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_college_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_college_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_college_id_seq" OWNED BY public."makeReports_college".id;


--
-- Name: makeReports_dataadditionalinformation; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_dataadditionalinformation" (
    id integer NOT NULL,
    comment character varying(3000) NOT NULL,
    report_id integer NOT NULL,
    supplement character varying(100) NOT NULL
);


ALTER TABLE public."makeReports_dataadditionalinformation" OWNER TO aaadb;

--
-- Name: makeReports_dataadditionalinformation_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_dataadditionalinformation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_dataadditionalinformation_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_dataadditionalinformation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_dataadditionalinformation_id_seq" OWNED BY public."makeReports_dataadditionalinformation".id;


--
-- Name: makeReports_decisionsactions; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_decisionsactions" (
    id integer NOT NULL,
    text character varying(3000) NOT NULL,
    "sloIR_id" integer NOT NULL
);


ALTER TABLE public."makeReports_decisionsactions" OWNER TO aaadb;

--
-- Name: makeReports_decisionsactions_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_decisionsactions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_decisionsactions_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_decisionsactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_decisionsactions_id_seq" OWNED BY public."makeReports_decisionsactions".id;


--
-- Name: makeReports_degreeprogram; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_degreeprogram" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    level character varying(75) NOT NULL,
    cycle integer,
    department_id integer NOT NULL,
    "startingYear" integer,
    active boolean NOT NULL,
    accredited boolean NOT NULL,
    CONSTRAINT "makeReports_degreeprogram_startingYear_check" CHECK (("startingYear" >= 0))
);


ALTER TABLE public."makeReports_degreeprogram" OWNER TO aaadb;

--
-- Name: makeReports_degreeprogram_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_degreeprogram_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_degreeprogram_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_degreeprogram_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_degreeprogram_id_seq" OWNED BY public."makeReports_degreeprogram".id;


--
-- Name: makeReports_department; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_department" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    college_id integer NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public."makeReports_department" OWNER TO aaadb;

--
-- Name: makeReports_department_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_department_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_department_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_department_id_seq" OWNED BY public."makeReports_department".id;


--
-- Name: makeReports_gradedrubric; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_gradedrubric" (
    id integer NOT NULL,
    "rubricVersion_id" integer NOT NULL,
    "generalComment" character varying(2000),
    "section1Comment" character varying(2000),
    "section2Comment" character varying(2000),
    "section3Comment" character varying(2000),
    "section4Comment" character varying(2000),
    complete boolean NOT NULL
);


ALTER TABLE public."makeReports_gradedrubric" OWNER TO aaadb;

--
-- Name: makeReports_gradedrubric_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_gradedrubric_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_gradedrubric_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_gradedrubric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_gradedrubric_id_seq" OWNED BY public."makeReports_gradedrubric".id;


--
-- Name: makeReports_gradedrubricitem; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_gradedrubricitem" (
    id integer NOT NULL,
    grade character varying(300) NOT NULL,
    item_id integer NOT NULL,
    rubric_id integer NOT NULL
);


ALTER TABLE public."makeReports_gradedrubricitem" OWNER TO aaadb;

--
-- Name: makeReports_gradedrubricitem_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_gradedrubricitem_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_gradedrubricitem_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_gradedrubricitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_gradedrubricitem_id_seq" OWNED BY public."makeReports_gradedrubricitem".id;


--
-- Name: makeReports_gradgoal; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_gradgoal" (
    id integer NOT NULL,
    text character varying(600) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public."makeReports_gradgoal" OWNER TO aaadb;

--
-- Name: makeReports_gradgoal_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_gradgoal_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_gradgoal_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_gradgoal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_gradgoal_id_seq" OWNED BY public."makeReports_gradgoal".id;


--
-- Name: makeReports_graph; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_graph" (
    id integer NOT NULL,
    "dateTime" timestamp with time zone NOT NULL,
    graph character varying(100) NOT NULL
);


ALTER TABLE public."makeReports_graph" OWNER TO aaadb;

--
-- Name: makeReports_graph_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_graph_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_graph_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_graph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_graph_id_seq" OWNED BY public."makeReports_graph".id;


--
-- Name: makeReports_profile; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_profile" (
    id integer NOT NULL,
    aac boolean,
    department_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public."makeReports_profile" OWNER TO aaadb;

--
-- Name: makeReports_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_profile_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_profile_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_profile_id_seq" OWNED BY public."makeReports_profile".id;


--
-- Name: makeReports_report; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_report" (
    id integer NOT NULL,
    author character varying(100) NOT NULL,
    "section1Comment" character varying(2000),
    "section2Comment" character varying(2000),
    "section3Comment" character varying(2000),
    "section4Comment" character varying(2000),
    submitted boolean NOT NULL,
    "degreeProgram_id" integer NOT NULL,
    rubric_id integer,
    year integer NOT NULL,
    returned boolean NOT NULL,
    date_range_of_reported_data character varying(500),
    "numberOfSLOs" integer NOT NULL,
    accredited boolean NOT NULL,
    CONSTRAINT "makeReports_report_numberOfSLOs_check" CHECK (("numberOfSLOs" >= 0)),
    CONSTRAINT "makeReports_report_year_check" CHECK ((year >= 0))
);


ALTER TABLE public."makeReports_report" OWNER TO aaadb;

--
-- Name: makeReports_report_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_report_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_report_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_report_id_seq" OWNED BY public."makeReports_report".id;


--
-- Name: makeReports_reportsupplement; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_reportsupplement" (
    id integer NOT NULL,
    supplement character varying(100) NOT NULL,
    report_id integer NOT NULL
);


ALTER TABLE public."makeReports_reportsupplement" OWNER TO aaadb;

--
-- Name: makeReports_reportsupplement_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_reportsupplement_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_reportsupplement_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_reportsupplement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_reportsupplement_id_seq" OWNED BY public."makeReports_reportsupplement".id;


--
-- Name: makeReports_requiredfieldsetting; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_requiredfieldsetting" (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    required boolean NOT NULL
);


ALTER TABLE public."makeReports_requiredfieldsetting" OWNER TO aaadb;

--
-- Name: makeReports_requiredfieldsetting_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_requiredfieldsetting_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_requiredfieldsetting_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_requiredfieldsetting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_requiredfieldsetting_id_seq" OWNED BY public."makeReports_requiredfieldsetting".id;


--
-- Name: makeReports_resultcommunicate; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_resultcommunicate" (
    id integer NOT NULL,
    text character varying(3000) NOT NULL,
    report_id integer NOT NULL
);


ALTER TABLE public."makeReports_resultcommunicate" OWNER TO aaadb;

--
-- Name: makeReports_resultcommunicate_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_resultcommunicate_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_resultcommunicate_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_resultcommunicate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_resultcommunicate_id_seq" OWNED BY public."makeReports_resultcommunicate".id;


--
-- Name: makeReports_rubric; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_rubric" (
    id integer NOT NULL,
    date date NOT NULL,
    "fullFile" character varying(100),
    name character varying(150) NOT NULL
);


ALTER TABLE public."makeReports_rubric" OWNER TO aaadb;

--
-- Name: makeReports_rubric_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_rubric_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_rubric_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_rubric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_rubric_id_seq" OWNED BY public."makeReports_rubric".id;


--
-- Name: makeReports_rubricitem; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_rubricitem" (
    id integer NOT NULL,
    text character varying(1000) NOT NULL,
    section integer NOT NULL,
    "rubricVersion_id" integer NOT NULL,
    "order" integer,
    "DMEtext" character varying(1000) NOT NULL,
    "EEtext" character varying(1000) NOT NULL,
    "MEtext" character varying(1000) NOT NULL,
    abbreviation character varying(20) NOT NULL,
    CONSTRAINT "makeReports_rubricitem_order_check" CHECK (("order" >= 0)),
    CONSTRAINT "makeReports_rubricitem_section_check" CHECK ((section >= 0))
);


ALTER TABLE public."makeReports_rubricitem" OWNER TO aaadb;

--
-- Name: makeReports_rubricitem_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_rubricitem_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_rubricitem_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_rubricitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_rubricitem_id_seq" OWNED BY public."makeReports_rubricitem".id;


--
-- Name: makeReports_slo; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_slo" (
    id integer NOT NULL,
    blooms character varying(50) NOT NULL,
    "numberOfUses" integer NOT NULL,
    CONSTRAINT "makeReports_slo_numberOfUses_check" CHECK (("numberOfUses" >= 0))
);


ALTER TABLE public."makeReports_slo" OWNER TO aaadb;

--
-- Name: makeReports_slo_gradGoals; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_slo_gradGoals" (
    id integer NOT NULL,
    slo_id integer NOT NULL,
    gradgoal_id integer NOT NULL
);


ALTER TABLE public."makeReports_slo_gradGoals" OWNER TO aaadb;

--
-- Name: makeReports_slo_gradGoals_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_slo_gradGoals_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_slo_gradGoals_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_slo_gradGoals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_slo_gradGoals_id_seq" OWNED BY public."makeReports_slo_gradGoals".id;


--
-- Name: makeReports_slo_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_slo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_slo_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_slo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_slo_id_seq" OWNED BY public."makeReports_slo".id;


--
-- Name: makeReports_sloinreport; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_sloinreport" (
    id integer NOT NULL,
    report_id integer NOT NULL,
    slo_id integer NOT NULL,
    "changedFromPrior" boolean NOT NULL,
    date date NOT NULL,
    "goalText" character varying(1000) NOT NULL,
    number integer NOT NULL,
    "numberOfAssess" integer NOT NULL,
    CONSTRAINT "makeReports_sloinreport_numberOfAssess_check" CHECK (("numberOfAssess" >= 0)),
    CONSTRAINT "makeReports_sloinreport_number_check" CHECK ((number >= 0))
);


ALTER TABLE public."makeReports_sloinreport" OWNER TO aaadb;

--
-- Name: makeReports_sloinreport_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_sloinreport_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_sloinreport_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_sloinreport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_sloinreport_id_seq" OWNED BY public."makeReports_sloinreport".id;


--
-- Name: makeReports_slostatus; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_slostatus" (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    "sloIR_id" integer NOT NULL,
    override boolean NOT NULL
);


ALTER TABLE public."makeReports_slostatus" OWNER TO aaadb;

--
-- Name: makeReports_slostatus_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_slostatus_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_slostatus_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_slostatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_slostatus_id_seq" OWNED BY public."makeReports_slostatus".id;


--
-- Name: makeReports_slostostakeholder; Type: TABLE; Schema: public; Owner: aaadb
--

CREATE TABLE public."makeReports_slostostakeholder" (
    id integer NOT NULL,
    text character varying(2000) NOT NULL,
    report_id integer
);


ALTER TABLE public."makeReports_slostostakeholder" OWNER TO aaadb;

--
-- Name: makeReports_slostostakeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: aaadb
--

CREATE SEQUENCE public."makeReports_slostostakeholder_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."makeReports_slostostakeholder_id_seq" OWNER TO aaadb;

--
-- Name: makeReports_slostostakeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaadb
--

ALTER SEQUENCE public."makeReports_slostostakeholder_id_seq" OWNED BY public."makeReports_slostostakeholder".id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: makeReports_announcement id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_announcement" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_announcement_id_seq"'::regclass);


--
-- Name: makeReports_assessment id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessment" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_assessment_id_seq"'::regclass);


--
-- Name: makeReports_assessmentaggregate id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentaggregate" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_assessmentaggregate_id_seq"'::regclass);


--
-- Name: makeReports_assessmentdata id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentdata" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_assessmentdata_id_seq"'::regclass);


--
-- Name: makeReports_assessmentsupplement id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentsupplement" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_assessmentsupplement_id_seq"'::regclass);


--
-- Name: makeReports_assessmentversion id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_assessmentversion_id_seq"'::regclass);


--
-- Name: makeReports_assessmentversion_supplements id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion_supplements" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_assessmentversion_supplements_id_seq"'::regclass);


--
-- Name: makeReports_college id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_college" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_college_id_seq"'::regclass);


--
-- Name: makeReports_dataadditionalinformation id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_dataadditionalinformation" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_dataadditionalinformation_id_seq"'::regclass);


--
-- Name: makeReports_decisionsactions id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_decisionsactions" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_decisionsactions_id_seq"'::regclass);


--
-- Name: makeReports_degreeprogram id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_degreeprogram" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_degreeprogram_id_seq"'::regclass);


--
-- Name: makeReports_department id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_department" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_department_id_seq"'::regclass);


--
-- Name: makeReports_gradedrubric id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradedrubric" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_gradedrubric_id_seq"'::regclass);


--
-- Name: makeReports_gradedrubricitem id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradedrubricitem" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_gradedrubricitem_id_seq"'::regclass);


--
-- Name: makeReports_gradgoal id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradgoal" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_gradgoal_id_seq"'::regclass);


--
-- Name: makeReports_graph id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_graph" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_graph_id_seq"'::regclass);


--
-- Name: makeReports_profile id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_profile" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_profile_id_seq"'::regclass);


--
-- Name: makeReports_report id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_report" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_report_id_seq"'::regclass);


--
-- Name: makeReports_reportsupplement id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_reportsupplement" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_reportsupplement_id_seq"'::regclass);


--
-- Name: makeReports_requiredfieldsetting id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_requiredfieldsetting" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_requiredfieldsetting_id_seq"'::regclass);


--
-- Name: makeReports_resultcommunicate id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_resultcommunicate" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_resultcommunicate_id_seq"'::regclass);


--
-- Name: makeReports_rubric id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_rubric" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_rubric_id_seq"'::regclass);


--
-- Name: makeReports_rubricitem id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_rubricitem" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_rubricitem_id_seq"'::regclass);


--
-- Name: makeReports_slo id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slo" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_slo_id_seq"'::regclass);


--
-- Name: makeReports_slo_gradGoals id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slo_gradGoals" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_slo_gradGoals_id_seq"'::regclass);


--
-- Name: makeReports_sloinreport id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_sloinreport" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_sloinreport_id_seq"'::regclass);


--
-- Name: makeReports_slostatus id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slostatus" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_slostatus_id_seq"'::regclass);


--
-- Name: makeReports_slostostakeholder id; Type: DEFAULT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slostostakeholder" ALTER COLUMN id SET DEFAULT nextval('public."makeReports_slostostakeholder_id_seq"'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add college	1	add_college
2	Can change college	1	change_college
3	Can delete college	1	delete_college
4	Can view college	1	view_college
5	Can add department	2	add_department
6	Can change department	2	change_department
7	Can delete department	2	delete_department
8	Can view department	2	view_department
9	Can add degree program	3	add_degreeprogram
10	Can change degree program	3	change_degreeprogram
11	Can delete degree program	3	delete_degreeprogram
12	Can view degree program	3	view_degreeprogram
13	Can add rubric	4	add_rubric
14	Can change rubric	4	change_rubric
15	Can delete rubric	4	delete_rubric
16	Can view rubric	4	view_rubric
17	Can add grad goal	5	add_gradgoal
18	Can change grad goal	5	change_gradgoal
19	Can delete grad goal	5	delete_gradgoal
20	Can view grad goal	5	view_gradgoal
21	Can add slo	6	add_slo
22	Can change slo	6	change_slo
23	Can delete slo	6	delete_slo
24	Can view slo	6	view_slo
25	Can add graded rubric	7	add_gradedrubric
26	Can change graded rubric	7	change_gradedrubric
27	Can delete graded rubric	7	delete_gradedrubric
28	Can view graded rubric	7	view_gradedrubric
29	Can add report	8	add_report
30	Can change report	8	change_report
31	Can delete report	8	delete_report
32	Can view report	8	view_report
33	Can add slo in report	9	add_sloinreport
34	Can change slo in report	9	change_sloinreport
35	Can delete slo in report	9	delete_sloinreport
36	Can view slo in report	9	view_sloinreport
37	Can add assessment	10	add_assessment
38	Can change assessment	10	change_assessment
39	Can delete assessment	10	delete_assessment
40	Can view assessment	10	view_assessment
41	Can add data additional information	11	add_dataadditionalinformation
42	Can change data additional information	11	change_dataadditionalinformation
43	Can delete data additional information	11	delete_dataadditionalinformation
44	Can view data additional information	11	view_dataadditionalinformation
45	Can add slo status	12	add_slostatus
46	Can change slo status	12	change_slostatus
47	Can delete slo status	12	delete_slostatus
48	Can view slo status	12	view_slostatus
49	Can add result communicate	13	add_resultcommunicate
50	Can change result communicate	13	change_resultcommunicate
51	Can delete result communicate	13	delete_resultcommunicate
52	Can view result communicate	13	view_resultcommunicate
53	Can add decisions actions	14	add_decisionsactions
54	Can change decisions actions	14	change_decisionsactions
55	Can delete decisions actions	14	delete_decisionsactions
56	Can view decisions actions	14	view_decisionsactions
57	Can add sl os to stakeholder	15	add_slostostakeholder
58	Can change sl os to stakeholder	15	change_slostostakeholder
59	Can delete sl os to stakeholder	15	delete_slostostakeholder
60	Can view sl os to stakeholder	15	view_slostostakeholder
61	Can add profile	16	add_profile
62	Can change profile	16	change_profile
63	Can delete profile	16	delete_profile
64	Can view profile	16	view_profile
65	Can add rubric item	17	add_rubricitem
66	Can change rubric item	17	change_rubricitem
67	Can delete rubric item	17	delete_rubricitem
68	Can view rubric item	17	view_rubricitem
69	Can add graded rubric item	18	add_gradedrubricitem
70	Can change graded rubric item	18	change_gradedrubricitem
71	Can delete graded rubric item	18	delete_gradedrubricitem
72	Can view graded rubric item	18	view_gradedrubricitem
73	Can add assessment supplement	19	add_assessmentsupplement
74	Can change assessment supplement	19	change_assessmentsupplement
75	Can delete assessment supplement	19	delete_assessmentsupplement
76	Can view assessment supplement	19	view_assessmentsupplement
77	Can add assessment version	20	add_assessmentversion
78	Can change assessment version	20	change_assessmentversion
79	Can delete assessment version	20	delete_assessmentversion
80	Can view assessment version	20	view_assessmentversion
81	Can add assessment data	21	add_assessmentdata
82	Can change assessment data	21	change_assessmentdata
83	Can delete assessment data	21	delete_assessmentdata
84	Can view assessment data	21	view_assessmentdata
85	Can add report supplement	22	add_reportsupplement
86	Can change report supplement	22	change_reportsupplement
87	Can delete report supplement	22	delete_reportsupplement
88	Can view report supplement	22	view_reportsupplement
89	Can add announcement	23	add_announcement
90	Can change announcement	23	change_announcement
91	Can delete announcement	23	delete_announcement
92	Can view announcement	23	view_announcement
93	Can add graph	24	add_graph
94	Can change graph	24	change_graph
95	Can delete graph	24	delete_graph
96	Can view graph	24	view_graph
97	Can add assessment aggregate	25	add_assessmentaggregate
98	Can change assessment aggregate	25	change_assessmentaggregate
99	Can delete assessment aggregate	25	delete_assessmentaggregate
100	Can view assessment aggregate	25	view_assessmentaggregate
101	Can add required field setting	26	add_requiredfieldsetting
102	Can change required field setting	26	change_requiredfieldsetting
103	Can delete required field setting	26	delete_requiredfieldsetting
104	Can view required field setting	26	view_requiredfieldsetting
105	Can add log entry	27	add_logentry
106	Can change log entry	27	change_logentry
107	Can delete log entry	27	delete_logentry
108	Can view log entry	27	view_logentry
109	Can add permission	28	add_permission
110	Can change permission	28	change_permission
111	Can delete permission	28	delete_permission
112	Can view permission	28	view_permission
113	Can add group	29	add_group
114	Can change group	29	change_group
115	Can delete group	29	delete_group
116	Can view group	29	view_group
117	Can add user	30	add_user
118	Can change user	30	change_user
119	Can delete user	30	delete_user
120	Can view user	30	view_user
121	Can add content type	31	add_contenttype
122	Can change content type	31	change_contenttype
123	Can delete content type	31	delete_contenttype
124	Can view content type	31	view_contenttype
125	Can add session	32	add_session
126	Can change session	32	change_session
127	Can delete session	32	delete_session
128	Can view session	32	view_session
129	Can add attachment	33	add_attachment
130	Can change attachment	33	change_attachment
131	Can delete attachment	33	delete_attachment
132	Can view attachment	33	view_attachment
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$180000$gd3BCuAMIQmB$qQMIN5XpfhxIvQZHhmvKRAjTAGWYaiCqlhY1TzDsV4w=	2020-08-11 19:42:19.27743+00	f	smccarty	Sarah	McCarty	smccarty@unomaha.edu	f	t	2020-08-08 19:13:41.365048+00
7	pbkdf2_sha256$180000$lt0oXbnYMiD9$4Asx1XqdiOAe8nm9UfNYHm99If85yYQ54Dq5I4RMtjg=	2020-11-13 16:48:56.134089+00	f	geofaculty	Geagraphy	Professor	geo@unomaha.edu	f	t	2020-11-13 16:48:38.805243+00
8	pbkdf2_sha256$180000$pz4uLzDyLvm2$Utv7a8+fw6pgpFM8KxwjLVx7x0FAdCEYbA6vT9YSm8o=	2020-12-10 19:40:41.357824+00	f	test	Jane	Doe		f	t	2020-12-10 19:12:41.654742+00
9	pbkdf2_sha256$180000$Mma9v7u2CGtz$jV4e38KSlHVSF3dIHecKRFbPYns+jnnhPrhHiH97JOg=	\N	f	its-aac	ITS	ITS	its@unomaha.edu	f	t	2020-12-15 19:19:57.169119+00
10	pbkdf2_sha256$180000$OEeBwOIIwjv5$+05EAXJtqgjX/b5epCeK26KdL0j1xy2gyF9WncJsZyA=	2020-12-15 20:21:48.645526+00	f	its-faculty	ITS	ITS	its@unomaha.edu	f	t	2020-12-15 19:20:42.298357+00
4	pbkdf2_sha256$180000$KjED4I2TzL0x$rbbrmsBh5zSurAY9EG1Kbzab0qt3GuvX9fY/QFjyWu0=	2021-01-14 21:19:25.88493+00	f	jboron	Julie	Boron	jboron@unomaha.edu	f	t	2020-08-11 19:53:05.549304+00
3	pbkdf2_sha256$180000$dDoB6kAoqJMe$lhYISIdj04KTg+XnNhhVPMnVxKbZaTE5lG3lNEtyFPA=	2021-01-14 22:06:00.258456+00	f	kodd	Kali	Odd	kodd@unomaha.edu	f	t	2020-08-11 19:51:53.502646+00
6	pbkdf2_sha256$180000$VSEgVjrVQZnJ$tXw9+T4AoRqVFCx/6k3o5GH+HlDPUpcnQ/eTXgOX/oU=	2021-01-14 22:14:25.516803+00	f	aactest	AAC	Member	aacmember@unomaha.edu	f	t	2020-11-13 16:39:52.691017+00
5	pbkdf2_sha256$180000$eSQCGFoR1UNJ$xRN9qTFmW4GNjL+QOCR/6iSbUNF+1LNHjnucE+JNWmc=	2021-02-17 17:41:27.701794+00	f	csfaculty	Faculty	Siy	csfaculty@unomah.edu	f	t	2020-08-21 16:41:05.608477+00
1	pbkdf2_sha256$180000$Ms1IxZ9UE6q6$S4ZzW3DIjdNl7i9GqQKwZl7388WkvWtdNjrlpvatjLI=	2021-09-15 05:17:54.219159+00	t	hsiy	Harvey	Siy	hsiy@unomaha.edu	t	t	2020-08-08 06:26:00.994987+00
11	pbkdf2_sha256$180000$35mQFdwsIsqn$y0FsZtpYZVZAZE1qpzT6BilZiVxz/nOG3gN4EhdqaRo=	2021-09-15 05:23:32.627169+00	f	aaateam	AAA	Team	aaateam@unomaha.edu	f	t	2021-09-15 05:21:56.186286+00
12	pbkdf2_sha256$180000$TFnCfSZSS09A$NIbv+GwhuDH9Vsrzx7lJptbUcWlWayuKTmJpl0XipYA=	2021-09-15 05:25:44.579667+00	f	reporter	Reporting	Faculty	reporter@unomaha.edu	f	t	2021-09-15 05:24:12.791257+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	makeReports	college
2	makeReports	department
3	makeReports	degreeprogram
4	makeReports	rubric
5	makeReports	gradgoal
6	makeReports	slo
7	makeReports	gradedrubric
8	makeReports	report
9	makeReports	sloinreport
10	makeReports	assessment
11	makeReports	dataadditionalinformation
12	makeReports	slostatus
13	makeReports	resultcommunicate
14	makeReports	decisionsactions
15	makeReports	slostostakeholder
16	makeReports	profile
17	makeReports	rubricitem
18	makeReports	gradedrubricitem
19	makeReports	assessmentsupplement
20	makeReports	assessmentversion
21	makeReports	assessmentdata
22	makeReports	reportsupplement
23	makeReports	announcement
24	makeReports	graph
25	makeReports	assessmentaggregate
26	makeReports	requiredfieldsetting
27	admin	logentry
28	auth	permission
29	auth	group
30	auth	user
31	contenttypes	contenttype
32	sessions	session
33	django_summernote	attachment
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-08-07 18:51:15.720704+00
2	auth	0001_initial	2020-08-07 18:51:15.795936+00
3	admin	0001_initial	2020-08-07 18:51:15.900565+00
4	admin	0002_logentry_remove_auto_add	2020-08-07 18:51:15.927588+00
5	admin	0003_logentry_add_action_flag_choices	2020-08-07 18:51:16.063692+00
6	contenttypes	0002_remove_content_type_name	2020-08-07 18:51:16.114454+00
7	auth	0002_alter_permission_name_max_length	2020-08-07 18:51:16.128664+00
8	auth	0003_alter_user_email_max_length	2020-08-07 18:51:16.150957+00
9	auth	0004_alter_user_username_opts	2020-08-07 18:51:16.17331+00
10	auth	0005_alter_user_last_login_null	2020-08-07 18:51:16.195127+00
11	auth	0006_require_contenttypes_0002	2020-08-07 18:51:16.199763+00
12	auth	0007_alter_validators_add_error_messages	2020-08-07 18:51:16.220508+00
13	auth	0008_alter_user_username_max_length	2020-08-07 18:51:16.253472+00
14	auth	0009_alter_user_last_name_max_length	2020-08-07 18:51:16.275582+00
15	auth	0010_alter_group_name_max_length	2020-08-07 18:51:16.29951+00
16	auth	0011_update_proxy_permissions	2020-08-07 18:51:16.320896+00
17	django_summernote	0001_initial	2020-08-07 18:51:16.335207+00
18	django_summernote	0002_update-help_text	2020-08-07 18:51:16.343874+00
19	makeReports	0001_squashed_0058_auto_20191202_1902	2020-08-07 18:51:17.184733+00
20	makeReports	0002_auto_20191203_1506	2020-08-07 18:51:17.652552+00
21	makeReports	0003_auto_20191213_2149	2020-08-07 18:51:17.691427+00
22	makeReports	0004_auto_20191213_2345	2020-08-07 18:51:17.729251+00
23	makeReports	0005_auto_20200315_1846	2020-08-07 18:51:17.831656+00
24	makeReports	0006_requiredfieldsetting	2020-08-07 18:51:17.84759+00
25	sessions	0001_initial	2020-08-07 18:51:17.869122+00
26	makeReports	0007_auto_20201112_0802	2020-12-04 03:02:40.426668+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
zfob3wen323w5gp8myg38bvjlv650lug	ZjgyY2VlZTc0NzYyMjk4ZTlmZmQ5YTljMTIzOTYwNGYyOTNlMzNhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMWU4M2QwYTc5ZTUzZTE3ZDJkNjQ5YmEzYmEzMTIwZGY3Nzc2NjY2In0=	2020-08-22 06:28:26.17908+00
r8j79ptgbjp1cmzuoconqjmpwei9azux	M2E2M2QwZDhiNTdlZWE0MDE5MTY2MzMwYjJkNjhiMGZkNDFjMjRkNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OTBlM2E2ZjBiMjYxZmVmZDBmNzYyNGEyNWE5MjkzM2ExY2I5ODRkIn0=	2020-08-25 19:42:19.28431+00
lf2i5ns8yu2bi15g9iciwmyd22mxgg5f	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-08-25 19:52:15.303008+00
4sw7jbsro01ulpgucv24diq6tjcpbg5g	NmMwNjQ5NDg3MjMzZDY2MTcyNTk2YmVmNTEwYjg5NDliMWEyMjRmZDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZWI4YjA3ZGVhOWUzZjcwOTU1YjAwODk0MjQ1OTY5MzMzNjNlMTBkIn0=	2020-08-25 19:53:30.254538+00
xxy9qyo9ruhufrlfmiihp1gh2q52698m	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-08-28 19:47:35.388318+00
molviw7du4c9k4xfqq4yxvz2c853r7hj	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-09-03 19:56:23.265494+00
9aeyujykpozuoz00yaqvmzfd8blcvq5p	NGMzNWQ2YjZlYmFjOTk1ZDg2YmYzY2RiZjk5NTU4MTU0MTMzYmI5Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYTZiZGE0MjI4ZDNiYTIwMjJkYmQyM2NkODhmNmVkYzE5MWFhNzE5In0=	2020-09-04 16:41:46.628267+00
k9dnk5atlumk91uu1jqz8n981y7p5cep	ZjgyY2VlZTc0NzYyMjk4ZTlmZmQ5YTljMTIzOTYwNGYyOTNlMzNhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMWU4M2QwYTc5ZTUzZTE3ZDJkNjQ5YmEzYmEzMTIwZGY3Nzc2NjY2In0=	2020-09-09 15:08:37.78328+00
nm990xsuw4432u0q2qa1tuwhy6v0zrzl	ZjgyY2VlZTc0NzYyMjk4ZTlmZmQ5YTljMTIzOTYwNGYyOTNlMzNhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMWU4M2QwYTc5ZTUzZTE3ZDJkNjQ5YmEzYmEzMTIwZGY3Nzc2NjY2In0=	2020-09-25 15:48:29.64831+00
m0sz3adm7n5czfb5uy2yrcvzxjlbzc6g	NGMzNWQ2YjZlYmFjOTk1ZDg2YmYzY2RiZjk5NTU4MTU0MTMzYmI5Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYTZiZGE0MjI4ZDNiYTIwMjJkYmQyM2NkODhmNmVkYzE5MWFhNzE5In0=	2020-09-25 15:49:12.415459+00
dzm65xqr9goag9dabkkbtwgd8xvktwxm	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-10-06 18:09:10.684111+00
h0mtida2lfyh4gm7gh1gr5vijfp7gjpx	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-10-08 15:42:36.556385+00
0o6kjaryhqsfugdjxyuzh88ckb8md8o8	ZjgyY2VlZTc0NzYyMjk4ZTlmZmQ5YTljMTIzOTYwNGYyOTNlMzNhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMWU4M2QwYTc5ZTUzZTE3ZDJkNjQ5YmEzYmEzMTIwZGY3Nzc2NjY2In0=	2020-10-12 14:09:18.145142+00
zlgbi1qwjuemtqh2fwk1ny7tv7wznsmz	NGMzNWQ2YjZlYmFjOTk1ZDg2YmYzY2RiZjk5NTU4MTU0MTMzYmI5Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYTZiZGE0MjI4ZDNiYTIwMjJkYmQyM2NkODhmNmVkYzE5MWFhNzE5In0=	2020-10-12 14:21:42.48341+00
3l0u727rqyayc70ymodkvqnuby8zi9mi	ZjgyY2VlZTc0NzYyMjk4ZTlmZmQ5YTljMTIzOTYwNGYyOTNlMzNhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMWU4M2QwYTc5ZTUzZTE3ZDJkNjQ5YmEzYmEzMTIwZGY3Nzc2NjY2In0=	2020-10-17 21:50:32.355751+00
4bx1ge816qyxy8lkanczhufzn4rc7z98	NGMzNWQ2YjZlYmFjOTk1ZDg2YmYzY2RiZjk5NTU4MTU0MTMzYmI5Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYTZiZGE0MjI4ZDNiYTIwMjJkYmQyM2NkODhmNmVkYzE5MWFhNzE5In0=	2020-10-17 21:53:37.804835+00
grjx1lt822sve5tvkzgqaudyk0f643b1	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-10-21 19:40:09.274613+00
12igvz2kmrnfh5tuvlrpkhqbuyriztso	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-11-18 20:26:16.444707+00
k1hg236an858nlm8ynjetqjd8losud1d	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-11-19 16:56:11.740291+00
yrurnxoh36626ko9mfey41kfip3owwf7	ZjgyY2VlZTc0NzYyMjk4ZTlmZmQ5YTljMTIzOTYwNGYyOTNlMzNhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMWU4M2QwYTc5ZTUzZTE3ZDJkNjQ5YmEzYmEzMTIwZGY3Nzc2NjY2In0=	2020-11-27 16:38:19.053819+00
oaahveu7xhcz6twusuwk6g8qs00ej4pa	OWY3NDA1ZmI0YTE1ZDQ0MWJjYzllNjk1NjQ5NDBhNGY5MDE2NDkwMjp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZTY2ZDA0Y2YyOWUwNjcxNTFmMGRhN2I0Zjc2YzQ4NWYxM2E5MDQwIn0=	2020-11-27 16:48:56.144529+00
zd6sp3180qoxn87t02i86vdrcnf2viht	MjVmMTMzZTY0NDI3Y2Q0NzZmODAwZjQwZWEyZTBhNDE5MTUwYjJlMjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMGRkZjAzZWRhMjM5NzU3YzBjMTlmNDA1ZjM2MjM3OTgwN2YwNjM0In0=	2020-11-27 16:52:21.903525+00
zxl7vtrgi4scommb9a4fq292kftatt2e	NDIzZDQ4M2IxODE2NmI3Yjk3NzY2Y2IxNTk5ZTdkNmNhZWNiZWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODE5NjkzYzM0NDEyZDQ3ZGZmYmRkODUxOGEyZjllOTgwYzEwOTU0In0=	2020-12-07 18:01:08.035103+00
9rojpvur7jnmxhat3i8b9ckztivve255	YjI2NDljOTBlZTlhNjExYjA1YzJjMzcyOTY5YzA5MTEyNDgxNDQ4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYzYwMTVhODc3MjhlMTFjYWE0NjE1ZWY3NWYzZTUyZjk4ZmY3ZGZlIn0=	2020-12-18 01:21:29.499282+00
ntkjmeigxm0sjr01blijxat3cjaa4oez	YWI0MDFmNjY3ZWM0ZWJhZDgyMzhmNmUwZDNjZjU0YjY0ZDM0ZDgwMzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzN2M2ZjM3YmNmMzg5ODQ0MjkyNGI0NDIwY2I2NGMzMGFjYjMzZWY3In0=	2020-12-18 01:25:28.537892+00
zslnhv9l9wcn6bny35exot9aqq3d3ppv	NzMxNDQ5ZGNmZDY1Yjg5MDQ4MzE5YTFhZmM4MTYzNTUxMmJkNDdiYjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MWQ4YWY3M2I5YWMyNGQ4MTc4NjU2N2U1ZDYyZjA5NjU5ZjVhZGIzIn0=	2020-12-24 19:19:17.117456+00
fxcw90w4cdkefxwr5m0v6jumpfo7qnq6	NjRiNTJmYmM5YTczODMyMTcwYjBkMGY3MjM2ZjhmODY3NjM4NDg1MDp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NWU0ZDg3MDQ5OGY2Y2E1MmU1YjA0NGRmMDVmMjJmOGY2MGE5OGVkIn0=	2020-12-24 19:40:41.363697+00
9u9c8n4k7nkzma6dr5ys9rf4qfzgt48v	YjI2NDljOTBlZTlhNjExYjA1YzJjMzcyOTY5YzA5MTEyNDgxNDQ4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYzYwMTVhODc3MjhlMTFjYWE0NjE1ZWY3NWYzZTUyZjk4ZmY3ZGZlIn0=	2020-12-29 18:27:57.081283+00
g2f9xln5mashihy1m2chra9seubd1v7e	YzcwNTJiZDY3YjcxYWVlNmIzMjE1MjJiZjg1MzYwNWIwMzEzYzU1ZTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDkxNmY1OWU4MmJmNDM2Y2ZkMjg5ZTQzYmZkYzRlZTI5Yzg2ODExNyJ9	2020-12-29 20:21:48.65037+00
41oxruxre5jyatjp0gim607pfqy02xdm	MTQzZDFmZDQ1MzM2MDg1MzE0MDE2YzMxODI3MmVmOGM0NDEwNTU5Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMmJiMTAzZWYxYTNkMzZiNGJmOTFiYmQwM2JmYjcyOGRkNzdiOGY3In0=	2021-01-28 22:14:25.52075+00
sw7rhpq00v2lc8lj143dqjw1x1qtl543	YWI0MDFmNjY3ZWM0ZWJhZDgyMzhmNmUwZDNjZjU0YjY0ZDM0ZDgwMzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzN2M2ZjM3YmNmMzg5ODQ0MjkyNGI0NDIwY2I2NGMzMGFjYjMzZWY3In0=	2021-02-03 00:10:48.087744+00
h4l9vcxkz8kthh0pflct1c5lz6hwzypm	YjI2NDljOTBlZTlhNjExYjA1YzJjMzcyOTY5YzA5MTEyNDgxNDQ4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYzYwMTVhODc3MjhlMTFjYWE0NjE1ZWY3NWYzZTUyZjk4ZmY3ZGZlIn0=	2021-02-03 00:39:50.249579+00
0sknvrekvxo8y6sjeqty2gbtee6y9hs5	OGQ3MTUwNGM3NTc1OTk4ZjU3MTA2ZjI0YmNjMzY2YWEwOTQ3NWM5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNTZhN2JhYjMxOTQ0YTM3NjVlMmI2NmFiYmY4NzExYTM4OTI2MDdjIn0=	2021-03-03 17:11:10.109385+00
ro2z9z3mc1urnv9d95xkhn9dhf1d3f2i	Y2M2YzE5NzIzZmZmNGE0NTU3MGY2MTE0YjZkZDdlMmQzMGM1NTM2MTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YTRhMjNkNWM1OGQxNWI0YWMxNmVjMDM4Y2UxZDExYmI5MDM1OWM1In0=	2021-03-03 17:41:27.707031+00
qqpdplrmh9xp3a8hzxxlrmu145fhhcqu	OGQ3MTUwNGM3NTc1OTk4ZjU3MTA2ZjI0YmNjMzY2YWEwOTQ3NWM5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNTZhN2JhYjMxOTQ0YTM3NjVlMmI2NmFiYmY4NzExYTM4OTI2MDdjIn0=	2021-09-29 05:13:02.565758+00
f7f3i4pqqevcg9r9hgm83vxo3vwif20m	ODA3MDU2YzJjYjY1NDIyMTMxYjRjMjE3NGQ5YjQwOTI0ZWIzYjdlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZTk4YTRkODU2MTJiZmNlZDYwZmVlNzcyNjU0NjRkOGY1NTdiODJkIn0=	2021-09-29 05:17:11.569441+00
urv9h1akmfo54ybyyk5tzlml1v8v0uyc	ODA3MDU2YzJjYjY1NDIyMTMxYjRjMjE3NGQ5YjQwOTI0ZWIzYjdlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZTk4YTRkODU2MTJiZmNlZDYwZmVlNzcyNjU0NjRkOGY1NTdiODJkIn0=	2021-09-29 05:17:54.22771+00
e17ifws94oniyd7p6izkvfq7s8039eif	YjAyMzUxZjg5ZTFhNThmNGEzN2ViMDk0Y2Q2OGUzYjZkMWQ0YWI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzUwYTJmNTIxOWFiZjQ2YjU1ZmY3MGFjNThkM2E0OWFjMjA4NGU5NSJ9	2021-09-29 05:23:32.634122+00
vmlzzw7bt9mxcgc685wko7a9y7lyuczh	NjNlOWUyODU5YTQ0OTRhM2FkZjUyOWQ1YjdhNGZlZWQxOGJkZmViNjp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2I3ZjRmYTg3MjU5OWIwZTdhZjBhYTU3NjRlZjhjNmVjMWYyZmUxMSJ9	2021-09-29 05:25:44.58459+00
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: makeReports_announcement; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_announcement" (id, text, expiration, creation) FROM stdin;
\.


--
-- Data for Name: makeReports_assessment; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_assessment" (id, title, "domainExamination", "domainProduct", "domainPerformance", "directMeasure", "numberOfUses") FROM stdin;
1	Performance on final project paper	f	t	f	t	1
2	Responses on progress reports submitted in the practicum course.	f	t	f	t	1
22	Scientific Method	t	f	f	t	1
3	Evaluation forms completed by the student and the agency.	f	f	t	f	1
4	Performance on final project paper	f	t	f	t	1
5	Responses on progress reports submitted in the practicum course.	f	t	f	t	1
23	Knowledge of General Science	t	f	f	t	1
6	Performance on final project paper	f	t	f	t	1
7	Responses on progress reports submitted in the practicum course.	f	t	f	t	1
35	Oral presentation/participation	f	t	f	t	1
8	Evaluation forms completed by the student and the agency.	f	f	t	f	1
24	Research Portfolio	f	t	f	t	1
9	Performance on final project paper	f	t	f	t	1
15	The increase in the guessing-adjusted proportion of students who can identify and apply consumer theory concepts (γ ̂).	t	f	f	t	2
10	Responses on progress reports submitted in the practicum course.	f	t	f	t	1
16	The increase in the guessing-adjusted proportion of students who can identify and apply producer theory concepts (γ ̂).	t	f	f	t	2
11	Evaluation forms completed by the student and the agency.	f	f	t	f	1
17	The increase in the guessing-adjusted proportion of students who can identify and apply microeconomics – theory of the firm (γ ̂).	t	f	f	t	2
12	Capstone project design and implementation	f	t	f	t	1
18	The increase in the guessing-adjusted proportion of students who can recognize and comprehend macroeconomic growth concepts (γ ̂).	t	f	f	t	2
13	Problem Solving	f	t	f	t	1
19	The increase in the guessing-adjusted proportion of students who can recognize and comprehend business cycle theory and monetary policy concepts (γ ̂).	t	f	f	t	2
20	The increase in the guessing-adjusted proportion of students who can recognize and comprehend business stabilization policy concepts (γ ̂).	t	f	f	t	2
21	A formal research paper of at least eight pages in length, preferably from an upper-division Economics course.	f	t	f	t	2
61	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education	f	f	t	t	1
36	Compositions/ Research papers	f	t	f	t	1
48	Oral defense of proposed capstone project	f	t	f	t	1
25	Completion of three projects as part of the capstone course ENVN 4610	t	t	f	t	1
37	Written assignments/exams	t	t	f	t	1
38	Written assignments/exams	t	t	f	t	1
26	Internship report written by the student.	f	t	t	t	1
27	Evaluation of the intern written by the internship sponsor.	f	t	t	t	1
57	Capstone Project with Internship	f	t	t	t	1
28	ENVN 4610 Environmental Assessment report.	t	t	f	t	1
39	Written Assignments	f	t	f	t	1
29	Oral progress and final reports as part of the capstone course – ENVN 4610	f	f	t	t	1
30	Completion of data modules using Excel as part of the capstone course ENVN 4610	t	t	f	t	1
31	Use of ArcGIS to complete tasks typically required of entry-level employees in environmental professions.	f	t	f	t	1
32	Oral presentation	f	f	t	t	1
33	Oral presentation	t	f	t	t	1
49	Oral presentation of final capstone project	f	t	f	t	1
34	Individual participation as graded according to rubrics	t	f	t	t	1
41	Post Graduation Interview	f	f	t	f	1
42	Rating Collected Student Written Works—Constructing Mathematical Arguments	f	t	f	t	1
66	Course assignment: Anatomical Model of subsystems of speech (SPED 4380)	f	t	t	t	1
50	Written final report of capstone project	f	t	f	t	1
43	Student Oral Presentations	f	f	t	t	1
44	Rating Collected Student Written Works-Overall Comprehension	f	t	f	t	1
45	Final examination scores in selected fundamental BMCH classes	t	f	f	t	1
51	Written capstone project proposal	f	t	f	t	1
46	Scores from application of knowledge section of rubric on required biomechanics capstone project	f	t	f	t	1
47	Written laboratory reports in Laboratory Methods in Biomechanics I and II	f	t	f	t	1
62	Praxis II Content Examination	t	f	f	t	1
52	Oral presentation of capstone project proposal	f	t	f	t	1
58	Evaluation of Exercise Prescription Written Practical Exams	t	f	t	t	1
53	Summary of final capstone project	f	t	f	t	1
54	Capstone final project oral presentation	f	t	f	t	1
55	Final exams	t	f	f	t	1
59	Internship in Exercise Science	f	f	t	t	1
65	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education.  The revised clinical practice evaluation was first administered in 2017-18.	f	f	t	t	1
63	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education	f	f	t	t	1
60	Clinical Practice Evaluation:  Use of this measure is mandated by the Nebraska Department of Education	f	f	t	t	1
64	Strategies Project	f	t	f	t	1
69	Clinical Practice Evaluation:  Use of this measure is mandated by the Nebraska Department of Education	f	f	t	t	1
67	Course assignment: Assessment and Treatment Strategy Project (SPED 4500)	f	t	t	t	1
68	AACU writing rubric	f	t	f	t	1
70	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education.	f	f	t	t	1
71	Praxis II Content Examination	t	f	f	t	1
72	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education	f	f	t	t	1
73	Strategies Project	f	t	t	t	1
74	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education	f	f	t	t	1
239	Practicum Project	f	f	t	t	2
75	Clinical Practice Evaluation:  Use of this measure is mandated by the Nebraska Department of Education	f	f	t	t	2
172	Formal Admissions	f	t	f	t	3
115	Oral reports	f	t	t	t	1
116	RESEARCH PAPER	f	t	f	t	1
76	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education	f	f	t	t	2
77	Praxis II Content Examination	t	f	f	t	2
40	Geographic Techniques and Cartography production	f	t	t	t	1
212	Principal Internship	f	f	t	t	1
78	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education	f	f	t	t	2
79	Strategies Project	f	t	t	t	2
80	Clinical Practice Evaluation:  This measure is mandated by the Nebraska Department of Education	f	f	t	t	2
81	Database functions and strategies	f	t	t	t	1
82	Facilities Project	f	t	f	t	1
117	POLICY PAPER	f	t	f	t	1
83	Fair Use Scenario	f	t	f	t	1
84	Student research paper has a clearly articulated thesis	f	t	f	t	1
85	Student research paper defends thesis with adequate evidence	f	t	f	t	1
141	Final Exam in MUS 2420	t	f	f	t	1
118	PODCAST	f	f	t	t	1
87	Student uses appropriate form & grammar	f	t	f	t	1
86	Student uses appropriate research resources, including both primary & secondary sources	f	t	f	t	1
88	Student writes in style appropriate to BA-level Art Historical research	f	t	f	t	1
89	Students perform a formal analysis of work(s) of art addressed in thesis	f	t	f	t	1
90	Student performs iconographic/symbolic analysis of work(s) of art addressed in thesis	f	t	f	t	1
119	Emergency management concepts and applications	f	t	f	t	1
91	Student addresses contextual circumstances of work(s) of art addressed in thesis	f	t	f	t	1
92	Student delivers public lecture with proficiency appropriate to BA-level Art Historical research	f	f	t	t	1
93	Student presentation is accompanied by appropriate visual evidence	f	f	f	t	1
94	Mid-Term Fiction Exam	t	f	f	t	1
98	Level of technical skill demonstrated within their chosen media	f	t	t	t	2
95	Portfolio	f	t	f	f	1
99	Demonstrated design and compositional skills	f	t	t	t	2
96	Poetry Presentation	f	f	t	t	1
100	Level of serious and relevant content related to concentration	f	t	t	t	2
97	Capstone Presentation	f	f	t	t	1
101	Professional documentation of the selected compositions	f	t	f	t	2
120	Critical thinking skills	f	t	f	t	1
102	Organization of work and work that is clearly labeled	f	t	f	t	2
103	Demonstration of student's potential to excel in their chosen field	f	t	f	t	2
104	Description of the intent of their work.	f	t	t	t	2
105	Clarity and articulation of the concepts related to their work	f	t	t	t	2
106	Contextualization of the work both historically and within the contemporary setting of their chosen field	f	t	t	t	2
107	Final Project Draft	f	t	f	t	1
154	Research project paper.	f	t	f	t	1
108	Greek Play Blurb	f	t	f	t	1
121	Public Speaking skills	f	t	t	t	1
109	Exam 1	t	t	f	t	1
110	Box of Small Things	f	t	f	t	1
142	Research paper in MUS 2560	f	t	f	t	1
111	Final Photo Shoot	f	t	f	t	1
122	Technical Report & Professional Research Presentation	f	f	t	t	1
112	Mood Box	f	t	f	t	1
113	Technical Staff Position Assignments #1/2	f	t	t	t	1
114	Oral reports	f	t	t	t	1
123	This SLO is no longer required by ABET, so the department has phased it out.	f	f	f	t	1
124	Final Capstone Project	f	t	f	t	1
150	Written reports, oral presentations, field experiences/projects	f	t	t	t	1
125	Final Capstone Project	f	t	f	t	1
126	Student technical report and presentation	f	t	t	t	1
143	Senior Recital	f	f	t	t	1
127	Final Capstone Project	f	t	f	t	1
128	Final Capstone Project	f	t	t	t	1
131	SLO 1 Rubric	f	t	f	t	2
129	Final Capstone Project	f	t	t	t	1
132	SLO 2 Rubric	f	f	t	t	2
130	Final Capstone Project	f	t	f	t	1
133	SLO 3 Rubric	f	f	t	t	2
134	SLO 4 Rubric	f	t	f	t	2
135	SLO 5 Rubric	f	t	f	t	2
144	Final keyboard playing exam	t	f	f	t	1
145	Strategies Project	f	t	f	t	1
151	Applied research project and oral defense	f	t	t	t	1
146	Final Exam in MUS 2420	t	f	f	t	1
136	SLO 1 Rubric	f	t	f	t	2
137	SLO 2 Rubric	f	f	t	t	2
138	SLO 3 Rubric	f	f	t	t	2
139	SLO 4 Rubric	f	t	f	t	2
140	SLO 5 Rubric	f	t	f	t	2
147	Research paper in MUS 2560	f	t	f	t	1
148	Senior Recital	f	f	t	t	1
152	Written reports/ content exams	t	t	f	t	1
149	Final keyboard playing exam	t	f	f	t	1
159	Thesis or Capstone product (SLO 5 pertains to only M.A. students)	f	f	t	t	2
153	Written paper and analysis.	f	t	f	t	1
155	Thesis or Capstone product	f	t	f	t	2
161	Course Evaluations Item Set 1	f	t	t	t	1
160	Dissertation Assessment Rubric 1	f	t	f	t	1
156	Thesis or Capstone product	f	t	f	t	2
157	Thesis or Capstone product	f	t	f	t	2
158	Thesis or Capstone product	f	t	f	t	2
162	Dissertation Assessment Rubric 2	f	t	f	t	1
163	Course Evaluations Item Set 2	f	f	t	t	1
164	Course Evaluations Items Set 3	f	f	t	f	1
165	Dissertation Assessment Rubric 3	f	f	t	f	1
166	Oral Defense of Thesis/Project; Elevator Speech	f	t	t	t	1
167	Thesis/Project Manuscript	f	t	f	t	1
168	Thesis/Project Manuscript; Thesis/Project Defense	t	t	f	t	1
169	Final Thesis/Project Manuscript	f	t	f	t	1
170	Formal Admissions	f	t	f	t	3
171	Capstone Presentation	f	t	f	t	3
198	Social & Cultural Diversity	t	t	t	t	1
200	Career Development	t	t	t	t	1
201	Helping Relationships	t	t	t	t	1
174	Formal Admissions	f	t	f	t	3
175	Capstone Presentation	f	t	t	t	3
176	Formal Admissions	f	t	f	t	3
179	Capstone Presentation	f	t	t	t	3
237	Thesis or Research other than thesis project	f	t	f	t	2
235	Practicum Supervisor evaluations	f	f	t	t	3
209	Principal Praxis Assessment	t	f	f	t	1
211	Instructional Leadership Data Project	f	t	f	t	1
240	Practicum Report	f	t	t	t	1
214	Seminar papers/final projects from fall 2016	f	t	f	t	1
216	Reading-focused assignments & evidence (notes, journals, annotations, etc.) Fall 2018	f	t	f	t	1
217	Thesis (Written Report and Oral Defense)	f	t	t	t	3
219	Comprehensive Exam	f	t	t	t	2
221	Comprehensive Exam	t	f	f	t	2
222	Comprehensive Exams	t	f	f	t	1
224	Comprehensive Exams	t	f	f	t	1
226	Comprehensive Exams	t	f	f	t	1
242	Comprehensive Portfolio with Oral Defense	t	t	f	t	11
227	Poster Presentation	f	t	f	t	1
228	Knowledge of discipline	t	f	f	t	1
230	Conduct and analysis of original project	f	t	f	t	1
232	Synthesis and Extension	f	t	t	t	1
244	National Praxis Exam for School Psychology	t	f	f	t	10
205	Superintendent Praxis Assessment	t	f	f	t	2
206	Preproposal	f	t	f	t	2
197	Professional Orientation & Ethical Practice	t	t	t	t	1
199	Human Growth & Development	t	t	t	t	1
173	Praxis II Examination	t	f	f	t	1
177	Capstone Presentation	f	t	t	t	3
178	Formal Admissions	f	t	f	t	3
202	Group Work	t	t	t	t	1
203	Assessment	t	t	t	t	1
234	Behavior Development Solutions CBA Modules	t	f	f	f	4
204	Research & Program Evaluation	t	t	t	t	1
236	Comprehensive examination presentation	f	t	t	t	6
238	Practicum Project	f	t	f	t	1
210	Instructional Leadership Data Project	f	t	f	t	1
180	Data-Based Decision-Making Project	f	t	f	t	8
181	Internship Evaluation	f	f	t	t	14
213	MA Comprehensive Exams from 2015	t	f	f	t	1
182	Comprehensive Exam	f	t	f	t	1
241	Presentation at a national, international, or regional conference	f	t	t	t	1
183	First-author manuscript OR Oral presentation at a national conference	f	t	t	t	1
215	Seminar papers/final projects from fall 2016	f	t	f	t	1
184	Written dissertation and oral dissertation defense	f	t	t	t	1
185	CITI Training	t	f	f	t	1
186	Comprehensive Exam (MA) or Thesis (MS)	t	t	f	t	3
218	Project (Written Report and Oral Presentation)	f	t	t	t	3
187	CITI certification	t	f	f	t	1
189	Multiple-choice Comprehensive Examination	t	f	f	t	1
188	Board of Certification (BOC) Examination	t	f	f	t	1
190	Foundational Behaviors portion of Preceptor evaluations of ATS	f	f	t	t	1
220	Project (Written Report and Oral Presentation)	f	t	t	t	3
191	Clinical Site and Preceptor evaluation scores	f	f	t	t	1
223	Portfolio (language section)	f	t	f	t	1
225	Portfolio	f	t	f	t	1
229	Synthesis of information and extending the field	t	f	f	t	1
231	Discipline Knowledge	t	f	f	t	1
233	Conduct of Original Research	f	t	f	t	1
243	Intern Evaluation and Portfolio	f	t	t	t	11
207	Research Brief (sometimes called Symposium White Paper)	f	t	f	t	2
208	Superintendent Internship	f	t	f	t	2
196	Community Service Participation	f	f	t	f	1
195	Membership and participation in professional organizations/events	f	f	t	f	1
194	Rehabilitation project	f	t	t	t	1
193	Oral Practical Examinations	t	f	f	t	1
192	Evidence Based Medicine Projects	f	t	f	t	1
245	Algorithm analysis exam	t	f	f	t	1
247	Capstone presentation assessment	f	t	t	t	5
259	Capstone presentation	f	f	t	t	1
260	SLO 2 Example Assessment	f	f	t	t	1
256	SLO 1 Example Assessment	f	t	f	t	2
252	Assessment 1	f	t	f	t	1
253	Assessment 2	f	f	t	t	1
254	Assessment 1	t	t	f	t	1
261	Thesis design and implementation	f	t	f	t	1
14	Capstone Design	f	t	f	t	3
246	Machine learning project	f	t	f	t	2
255	Example Assessment 1	f	t	f	t	2
257	Example Assessment 1	f	t	f	t	1
262	Machine learning project	f	f	t	t	1
\.


--
-- Data for Name: makeReports_assessmentaggregate; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_assessmentaggregate" (id, aggregate_proficiency, met, "assessmentVersion_id", override) FROM stdin;
10	99	t	10	f
3	70	f	12	f
11	90	t	14	t
12	98	t	8	f
13	98	t	11	f
14	83	t	47	f
2	93	t	9	f
15	83	t	48	f
1	91	t	1	f
4	99	t	2	f
5	99	t	3	f
6	92	t	4	f
7	99	t	5	f
8	100	t	6	f
9	99	t	7	f
17	98	t	401	f
16	97	t	400	f
\.


--
-- Data for Name: makeReports_assessmentdata; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_assessmentdata" (id, "numberStudents", "overallProficient", "assessmentVersion_id", "dataRange") FROM stdin;
3	37	75	12	2019-2020
4	36	85	12	2019-2020
5	36	50	12	2019-2020 - Testing
1	30	97	1	Spring 2018-Fall 2019 Citations & References
9	37	100	2	Spring 2018-Fall 2019 Report 1
12	32	97	3	Spring 2018-Fall 2019 Agency
2	30	93	9	Spring 2018-Fall 2019 Project Evaluation
6	30	83	1	Introduction
7	30	90	1	Supporting Documents
8	30	93	1	Project Evaluation
10	33	97	2	Report 2
11	33	100	2	Report 3
13	35	100	3	Student
14	30	83	4	Spring 2018-Fall 2019 Introduction
15	30	100	4	Project Planning
16	30	93	4	Project Description & Content
17	30	90	4	Supporting Documents
18	30	93	4	Project Evaluation
19	37	100	5	Spring 2018-Fall 2019 Report 1
20	33	97	5	Report 2
21	33	100	5	Report 3
22	30	100	6	Spring 2018-Fall 2019 Grammar & Mechanics
23	30	100	6	APA Style & Communication
24	37	100	7	Spring 2018-Fall 2019 Report 1
25	33	97	7	Report 2
26	33	100	7	Report 3
27	37	100	10	Spring 2018-Fall 2019 Report 1
28	33	97	10	Report 2
29	33	100	10	Report 3
30	35	90	14	2019-2020
31	35	97	8	Spring 2018-Fall 2019 2 agency indicators & 1 student indicator
32	35	100	8	4 agency & 2 student indicators
33	35	97	11	Spring 2018-Fall 2019 4 agency indicators
34	35	100	11	5 agency & 1 student indicator
35	12	83	47	2017-2019
36	6	83	48	2017-2019
38	100	98	401	Summer 2019-Fall 2020
41	100	97	400	Summer 2019-Fall 2020
\.


--
-- Data for Name: makeReports_assessmentsupplement; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_assessmentsupplement" (id, supplement, uploaded_at) FROM stdin;
\.


--
-- Data for Name: makeReports_assessmentversion; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_assessmentversion" (id, date, description, "finalTerm", "where", "allStudents", "sampleDescription", frequency, threshold, target, assessment_id, report_id, "changedFromPrior", slo_id, number, "frequencyChoice") FROM stdin;
1	2020-09-22	<p><span style="line-height: 115%;">The final paper is scored with a rubric (see included  below). The following domains are relevant to this SLO: (a) citations and  references; (b) introduction; (c) supporting project documents; (d) project  evaluation.</span><br></p>	f	<p><span style="line-height: 115%;">Within the required practicum course.</span><br></p>	t			80% of students meet or exceed expectations. Please see included rubrics with highlighted columns that show proficiency.	80	1	2	f	1	1	S
2	2020-09-22	<p><span style="line-height: 115%;">The practicum progress reports are an assessment of  the student’s work completed during the practicum. This is turned in three  times per semester. Please see rubric provided below.</span><br></p>	f	<p><span style="line-height: 115%;">Within the required practicum course.</span><br></p>	t			80% of students meet or exceed expectations. Please see included rubrics with highlighted columns that show proficiency.	80	2	2	f	1	2	S
3	2020-09-22	<p><span style="line-height: 115%;">Both the student and the agency completed evaluation  forms at the end of the semester. Specific items are highlighted below that are  relevant for this SLO.</span><br></p>	f	<p><span style="line-height: 115%;">Data are collected at the end of the semester that  practicum is completed by the practicum instructor.</span><br></p>	t			90% of students meet or exceed expectations for this subjective measure. Note: for the supervisor form, a score of 3 (satisfactory) through 5 (excellent) meets our threshold; on the student’s evaluation of the agency form, a score of 2 (adequate) through 5 (excellent) meets our threshold.	90	3	2	f	1	3	S
4	2020-09-22	<p><span style="line-height: 115%;">The final paper is scored with a rubric (see included  below). T The following domains are relevant to this SLO: (a) grammar and  mechanics; (b) APA style and communication.</span><br></p>	f	<p><span style="line-height: 115%;">Within the required practicum course.</span><br></p>	t			80% of students meet or exceed expectations. Please see included rubrics with highlighted columns that show proficiency.	80	4	2	f	2	1	S
5	2020-09-22	<p><span style="line-height: 115%;">The practicum progress reports are an assessment of  the student’s work completed during the practicum. This is turned in three  times per semester.</span><br></p>	f	<p><span style="line-height: 115%;">Within the required practicum course.</span><br></p>	t			80% of students meet or exceed expectations. Please see included rubrics with highlighted columns that show proficiency.	80	5	2	f	2	2	S
6	2020-09-22	<p><span style="line-height: 115%;">The final paper is scored with a rubric (see included  below). T The following domains are relevant to this SLO: (a) grammar and  mechanics; (b) APA style and communication.</span><br></p>	f	<p><span style="line-height: 115%;">Within the required practicum course.</span><br></p>	t			80% of students meet or exceed expectations. Please see included rubrics with highlighted columns that show proficiency.	80	6	2	f	3	1	S
7	2020-09-22	<p><span style="line-height: 115%;">The practicum progress reports are an assessment of  the student’s work completed during the practicum. This is turned in three  times per semester.</span><br></p>	f	<p><span style="line-height: 115%;">Within the required practicum course.</span><br></p>	t			80% of students meet or exceed expectations. Please see included rubrics with highlighted columns that show proficiency.	80	7	2	f	3	2	S
8	2020-09-22	<p><span style="line-height: 115%;">Both the student and the agency completed evaluation  forms at the end of the semester. Specific items are highlighted below that are  relevant for this SLO.</span><br></p>	f	<p><span style="line-height: 115%;">Data are collected at the end of the semester that  practicum is completed by the practicum instructor</span><br></p>	t			90% of students meet or exceed expectations for this subjective measure. Note: for the supervisor form, a score of 3 (satisfactory) through 5 (excellent) meets our threshold; on the student’s evaluation of the agency form, a score of 2 (adequate) through 5 (excellent) meets our threshold.	90	8	2	f	3	3	S
9	2020-09-22	<p><span style="line-height: 115%;">The final paper is scored with a rubric (see included  below). The project evaluation domain is relevant to this SLO.</span><br></p>	f	<p><span style="line-height: 115%;">Within the required practicum course.</span><br></p>	t			80% of students meet or exceed expectations. Please see included rubrics with highlighted columns that show proficiency.	80	9	2	f	4	1	S
10	2020-09-22	<p><span style="line-height: 115%;">The practicum progress reports are an assessment of  the student’s work completed during the practicum. This is turned in three  times per semester.</span><br></p>	f	<p><span style="line-height: 115%;">Within the required practicum course.</span><br></p>	t			80% of students meet or exceed expectations. Please see included rubrics with highlighted columns that show proficiency.	80	10	2	f	4	2	S
11	2020-09-22	<p><span style="line-height: 115%;">Both the student and the agency completed evaluation  forms at the end of the semester. Specific items are highlighted below that are  relevant for this SLO.</span><br></p>	f	<p><span style="line-height: 115%;">Data are collected at the end of the semester that  practicum is completed by the practicum instructor.</span><br></p>	t			90% of students meet or exceed expectations for this subjective measure. Note: for the supervisor form, a score of 3 (satisfactory) through 5 (excellent) meets our threshold; on the student’s evaluation of the agency form, a score of 2 (adequate) through 5 (excellent) meets our threshold.	90	11	2	f	4	3	S
12	2020-09-23	<p>The capstone project design and implementation activity will demonstrate a student's ability to design and test a nontrivial piece of software.&nbsp;</p>	t	<p>After project submission.</p>	t			Satisfactory	80	12	1	f	5	1	S
13	2020-09-28	<p><span style="">The SLO is measured by the following elements and artifacts</span></p><ul><li><span style="">Proposals for the thesis option route to graduation</span></li><li><span style="">Proposals for the project option route to graduation</span></li><li><span style="">Proposals for doing the term-projects in the Capstone course</span></li></ul>	t	<p>Proposal</p>	t			Satisfactory	80	13	3	f	6	1	S
14	2020-10-03	Use of appropriate design principles.<br>	t	<p>Project<br></p>	t			Acceptable	80	14	4	f	7	1	Y
247	2020-11-11	<p><span style="">Specific items aligned with each of the SLOS (CEC  Standards). See rubric for alignment.</span><br></p>	t	<p><span style="">This assessment occurs during the candidate’s final semester  in the program.</span><br></p>	t			4 out of 7 (2017-2018) and 6 out of 8 (2018-2019)	85	180	50	f	193	1	S
15	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly address consumer theory  concepts.</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3200,  fall and spring semesters – this is the last required micro theory class in the  program</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	21	15	5	f	8	1	S
16	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly address producer theory  concepts</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3200,  fall and spring semesters – this is the last required micro theory class in the  program</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	21	16	5	f	9	1	S
17	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly address theory of the firm  concepts</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3200,  fall and spring semesters – this is the last required micro theory class in the  program</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	21	17	5	f	10	1	S
18	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly relate to macroeconomic  growth</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3220,  fall and spring semesters – this is the last macro theory class in the program.</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	25	18	5	f	11	1	S
19	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly  relate to business cycle theory and monetary policy concepts</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3220,  fall and spring semesters – this is the last macro theory class in the program.</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	25	19	5	f	12	1	S
20	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly relate to stabilization  policy</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3220,  fall and spring semesters – this is the last macro theory class in the program.</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	25	20	5	f	13	1	S
21	2020-10-07	<p><i><span style="line-height: 107%;">The paper is a  demonstration of the student’s ability to write a research papers, and apply  appropriate research methods, at least once in the program.</span></i><br></p>	f	<p><i><span style="line-height: 107%;">Economics majors taking ECON 4999, spring  semesters, ad hoc committee of Arts &amp; Sciences faculty (non-Econ).</span></i><br></p>	t			2.0 or better	80	21	5	f	14	1	Y
22	2020-10-07	<p><i><span style="line-height: 115%;">Students will demonstrate  proficiency in the scientific method though an examination covering this topic.</span></i><br></p>	f	<p><i><span style="line-height: 115%;">General Science majors  taking GSCI 4990.&nbsp; The course will be  offered fall and spring.&nbsp; Students may  take it in either term.</span></i><br></p>	f	<p><i><span style="line-height: 115%;">In  the final year of their program, students will be required to take a zero  credit hour class, GSCI 4990, where they complete an assessment exam.</span></i><br></p>		Proficiency requires 70% or better on the examination questions related to the scientific method.	70	22	6	f	15	1	Y
23	2020-10-07	<p><i><span style="line-height: 115%;">Ability to identify and  apply various terms, concepts, problems, and theories of Biology, Chemistry,  Geology, Mathematics, and Physics.</span></i><br></p>	f	<p><i><span style="line-height: 115%;">General Science majors  taking GSCI 4990.&nbsp; The course will be  offered fall and spring.&nbsp; Students may  take it in either term.</span></i><br></p>	f	<p><i><span style="line-height: 115%;">In  the final year of their program, students will be required to take a zero  credit hour class, GSCI 4990, where they complete an assessment exam.</span></i><br></p>		Proficiency requires 70% or better on the examination questions related to Biology, Chemistry, Geology, Mathematics, and Physics.	70	23	6	f	16	1	Y
24	2020-10-07	<p><i><span style="line-height: 115%;">Students will produce a  portfolio of their best-written work (at lesaet three research papers or  reports) that demonstrates effective scientific research and discourse  practices.&nbsp; A faculty committee reviews  and scores the portfolio using the attached rubric (see ATTACHMENT I) with two faculty  scoring each portfolio.</span></i><br></p>	f	<p><i><span style="line-height: 115%;">General Science majors  taking GSCI 4990.&nbsp; The course will be  offered fall and spring.&nbsp; Students may  take it in either term.</span></i><br></p>	f	<p><i><span style="line-height: 115%;">In  the final year of their program, students will be required to take a zero  credit hour class, GSCI 4990, where they complete an assessment exam.</span></i><br></p>		Proficiency requires 2.0 or better on rubric (see ATTACHMENT I).	70	24	6	f	17	1	Y
25	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly address consumer theory  concepts.</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3200,  fall and spring semesters – this is the last required micro theory class in the  program</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	21	15	7	f	18	1	S
248	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	50	f	193	2	S
26	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly address producer theory  concepts</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3200,  fall and spring semesters – this is the last required micro theory class in the  program</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	21	16	7	f	19	1	S
27	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly address theory of the firm  concepts</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3200,  fall and spring semesters – this is the last required micro theory class in the  program</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	21	17	7	f	20	1	S
28	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly relate to macroeconomic  growth</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3220,  fall and spring semesters – this is the last macro theory class in the program.</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	25	18	7	f	21	1	S
29	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly  relate to business cycle theory and monetary policy concepts</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3220,  fall and spring semesters – this is the last macro theory class in the program.</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	25	19	7	f	22	1	S
30	2020-10-07	<p><i><span style="line-height: 107%;">The questions directly relate to stabilization  policy</span></i><br></p>	f	<p><i><span style="line-height: 107%;">A&amp;S economics majors, CBA economics majors,  and all students (results disaggregated by student major) taking ECON 3220,  fall and spring semesters – this is the last macro theory class in the program.</span></i><br></p>	t			Adjusted positive learning (γ ̂) from matched pairs of students who took both a pre- and post-test (five matched questions)	25	20	7	f	23	1	S
31	2020-10-07	<p><i><span style="line-height: 107%;">The paper is a  demonstration of the student’s ability to write a research papers, and apply  appropriate research methods, at least once in the program.</span></i><br></p>	f	<p><i><span style="line-height: 107%;">Economics majors taking ECON 4999, spring  semesters, ad hoc committee of Arts &amp; Sciences faculty (non-Econ).</span></i><br></p>	t			2.0 or better	80	21	7	f	24	1	Y
32	2020-11-05	<p><span style="line-height: 107%;">Performance  during small group discussions, quality of annotated bibliographies produced,  quality of final oral and written reports are used to evaluated students  ability to meet the SLO.</span><br></p>	f	<p><span style="line-height: 107%;">In the capstone course ENVN 4610</span><br></p>	t			Students will perform and produce products meeting minimum standards for entry-level employees in the environmental profession. This is defined in this context as earning at least 70% of the possible points for these projects.	90	25	9	f	25	1	Y
33	2020-11-05	<p><span style="line-height: 107%;">Internship  report written by the student describes the successful completion of the  internship experience and how the experience relates to the student’s  educational and career goals.</span><br></p>	f	<p><span style="line-height: 107%;">Completed  prior to graduation. Internship report is evaluated by the advisor.</span><br></p>	t		<p style="line-height: normal;"><span style="">ENVN majors may complete their internship at any time  after reaching junior standing.</span><span style=""></span></p>	As part of their report, students are asked to explain how the internship has influenced their educational and career paths and what they see as the next step in their careers. Proficiency is defined as students being able to clearly articulate these components.	90	26	9	f	26	1	O
34	2020-11-05	<p><span style="line-height: 107%;">Evaluation  of the intern written by the internship sponsor describes the sponsor’s  perspective on the performance of the intern and the sponsor’s willingness to  host future interns</span><br></p>	f	<p><span style="line-height: 107%;">Completed  prior to graduation. Internship report is evaluated by the advisor – the internship  sponsor will provide an evaluation of the intern.</span><br></p>	t		<p style="line-height: normal;"><span style="">ENVN majors may complete their internship at any time  after reaching junior standing.</span><span style=""></span></p>	Internship sponsors are asked to evaluate the intern and are asked if they would consider sponsoring an intern from UNO in the future. Proficiency is defined as an overall positive review and the sponsor’s willingness to host future interns.	80	27	9	f	26	2	O
35	2020-11-05	<p><b><span style="line-height: 107%;">As  part of the capstone course students complete an Environmental Assessment  following guidelines of the National Environmental Policy Act (NEPA).</span></b><br></p>	f	<p><span style="line-height: 107%;">In the capstone course ENVN 4610.</span><span style="line-height: 107%;"> </span><span style="line-height: 107%;">Students enroll in the capstone course ENVN 4610 prior to  graduation and are evaluated by the instructor. In the future, we hope to  expand the evaluation of final products to other members of the Environmental  Studies Coordinating Committee, and ultimately to local environmental  professionals.</span><br></p>	t			Students will produce products meeting standards for entry-level employees in the environmental profession that are clearly written and follow regulator guidelines (e.g. NEPA). This is defined in this context as earning at least 70% of available points for assignments and reports related to the Environmental Assessment.	90	28	9	f	27	1	Y
129	2020-11-09	<p style="">Identify issue(s) to be explored  in the final project</p><p>    </p><p style="">Utilizes history to support  arguments/ creative choices</p>	f	<p>3rd or 4th year of program</p><p><span style="line-height: 107%;">Assessment captured in THEA 4780 – History of Theatre</span><br></p>	t			A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	107	31	f	96	1	Y
36	2020-11-05	<p><span style="line-height: 107%;">Students  in the capstone course work on projects where they present a proposal for  development of an inventory and monitoring program and develop an assessment of  the environmental impacts of a project. They present oral progress and final  reports.</span><br></p>	f	<p><span style="line-height: 107%;">In the capstone course ENVN 4610</span><br></p>	t			Students will perform and produce oral reports meeting standards for entry-level employees in the environmental profession. This is defined as earning at least 70% of possible points.	90	29	9	f	28	1	Y
37	2020-11-05	<p><span style="line-height: 107%;">Students complete a series of exercises where they must  download existing data on air quality, and using Excel must manipulate and edit  the data, perform simple analyses, and present summarized data as figures and  tables. Students also complete a quiz where they are evaluated on their  understanding of data analysis.</span><br></p>	f	<p><span style="line-height: 107%;">In the capstone course ENVN 4610</span><br></p>	t			Proficiency is defined as earning at least 70% of the points on the assignments and quizzes.	90	30	9	f	29	1	Y
127	2020-11-09	<p>The measure assesses student’s ability to analyze and explain significant content in their work in a written,&nbsp;<span style="">oral and/or multimedia form.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	105	30	f	95	2	S
38	2020-11-05	<p><span style="line-height: 107%;">Production  of GIS databases, projects, and maps.</span><br></p>	f	<p><span style="line-height: 107%;">All  ENVN majors enroll in the capstone course – ENVN 4610. Projects required as  part of the course require them to apply GIS skills.</span><br></p>	t			Students are expected to incorporate materials generated using GIS in their projects for the capstone course. These are expected to meet the standards of an entry-level employee in an environmental profession which is defined as earning 70% of the possible points on the assignments.	90	31	9	f	30	1	Y
39	2020-11-05	<p><span style="line-height: 107%;">It tests students’  ability to synthesize information, deliver it accurately and effectively with  few linguistic errors.</span><br></p>	f	<p><span style="line-height: 107%;">Assessed in various courses , but  primarily in all sections of 4030 in French, German, and Spanish</span><br></p>	t			70% or above is a passing score on this assessment, indicating either a range of “developing,” to “mastered” proficiency level.	95	32	10	f	31	1	S
40	2020-11-05	<p style="">It tests students’ ability to derive meaning from a  variety of materials, including aural and/or visual/aural texts.</p>	f	<p><span style="line-height: 107%;">Assessed in various courses , but  primarily in all sections of 4030 in French, German, and Spanish</span><br></p>	t			70% or above is a passing score on this assessment, indicating either a range of “developing,” to “mastered” proficiency level.	95	33	10	f	32	1	S
41	2020-11-05	<p><span style="line-height: 107%;">It assesses students’  ability to change register in extemporaneous conversations.</span><br></p>	f	<p><span style="line-height: 107%;">Assessed in various courses , but  primarily in all sections of 4030 in French, German, and Spanish</span><br></p>	t			70% or above is a passing score on this assessment, indicating either a range of “developing,” to “mastered” proficiency level	95	34	10	f	33	1	S
42	2020-11-05	<p style="">This measure evaluates students’ ability to speak in  a variety of registers.</p>	f	<p><span style="line-height: 107%;">Assessed in various courses , but  primarily in all sections of 4030 in French, German, and Spanish</span><br></p>	t			70% or above is a passing score on this assessment, indicating either a range of “developing,” to “mastered” proficiency level.	95	35	10	f	34	1	S
43	2020-11-05	<p><span style="line-height: 107%;">It  tests students’ ability to synthesize information, deliver it accurately and  effectively with few linguistic errors</span><br></p>	f	<p><span style="line-height: 107%;">Assessed in various courses , but  primarily in all sections of 4040 in French, German, and Spanish</span><br></p>	t			70% or above is a passing score on this assessment, indicating either a range of “developing,” to “mastered” proficiency level.	95	36	10	f	35	1	S
44	2020-11-05	<p style="">It tests students’ ability to derive meaning from a  variety of materials, including aural and/or visual/aural texts.</p>	f	<p><span style="line-height: 107%;">Assessed in various courses , but  primarily in all sections of 4040 in French, German, and Spanish</span><br></p>	t			70% or above is a passing score on this assessment, indicating either a range of “developing,” to “mastered” proficiency level.	95	37	10	f	36	1	S
45	2020-11-05	<p><span style="line-height: 107%;">It assesses students’  ability to produce written texts and creative narratives</span><br></p>	f	<p><span style="line-height: 107%;">Assessed in various courses , but  primarily in all sections of 4040 in French, German, and Spanish</span><br></p>	t			70% or above is a passing score on this assessment, indicating either a range of “developing,” to “mastered” proficiency level	95	38	10	f	37	1	S
46	2020-11-05	<p><span style="line-height: 107%;">This measure evaluates  students’ ability to write in a variety of registers.</span><br></p>	f	<p><span style="line-height: 107%;">Assessed in various courses , but  primarily in all sections of 4040 in French, German, and Spanish</span><br></p>	t			70% or above is a passing score on this assessment, indicating either a range of “developing,” to “mastered” proficiency level.	95	39	10	f	38	1	S
67	2020-11-09	<p style="">Specific items are  aligned to each of the subscales.<b> </b></p><p>    </p><p style="">Item 1 aligns with  Learner Development, Item 2 aligns with Learner Differences, Item 3 aligns with  Learning Environments<b></b></p>	t	<p>&nbsp;During clinical practice semester* (the final 12 credit&nbsp;<span style="">hours of the degree program)</span></p><br>	t			Teacher candidates will be scored as Advanced or Proficient on each item by the university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	60	20	f	57	1	S
68	2020-11-09	<p style=""><b><i><span style="font-weight: normal; line-height: normal;">&nbsp;</span></i></b>Specific items are  aligned to each of the subscales.<b>&nbsp;</b><span style="">Items 4-5 align with  Content Knowledge, Item 6 aligns with Application of Content</span></p>	t	<p>During clinical practice semester* (the final 12 credit hours of the degree program)<br></p>	t			Teacher candidates will be scored as Advanced or Proficient by university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	61	20	f	58	1	S
48	2020-11-05	<p style=""><b>Students  finding success in admission to graduate school or starting their profession  career reflect on the merit and value of the degree they have received.</b></p>	f	<p style="line-height: normal;"><span style="">Student  are interviewed base on availability most of the time students are contacted  around 6 months post graduates but the timing can vary.</span></p>	f		<p style="line-height: normal;"><span style="">Student  are interviewed base on availability most of the time students are contacted  around 6 months post graduates but the timing can vary.</span></p>	Students are admitted to graduate school or indicate that they have found employment related to their degree program	80	41	12	f	40	1	O
47	2021-01-20	<p style="">The production of a geographic poster focuses on the  analysis and communication of geographic concept.&nbsp; It is an ideal method of producing geography  content focused on geographic thinking and visualization.</p>	f	<p><span style="line-height: 107%;">This is assssement is done externally  from class.</span><br></p>	f		<p>Third year</p>	Student will achieve a grade level of C or better on this poster product. This assessment is done after the student has completed the course by an external faculty members from the class (this assessment is not use for grading of the course).	80	40	12	t	39	1	O
128	2020-11-09	<p>The measure assess the student’s ability to define their works place in a historical and/or contemporary&nbsp;<span style="">context.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	106	30	f	95	3	S
412	2021-02-17	Ignore - Accredited Form	t	Ignore - Accredited Form	t	Ignore - Accredited Form		Ignore - Accredited Form	0	262	82	f	354	1	S
49	2020-11-05	<p style=""><b>An important skill in the  mathematical sciences is to make arguments and to write proofs. Collected&nbsp;</b><b style="">student works would be  measuring student abilities in these areas.</b></p>	f	<p><b>Where does the assessment occur?</b> &nbsp;The assessment  would be done in the following courses under the supervision of the two  academic coordinators. In each area, exam questions have been selected  by the academic coordinator in consultation with the instructor(s) for these  courses. These questions will be used to assess that particular SLO according  to an established rubric. &nbsp;The exam  questions will be given each semester the course is offered.</p><p><br></p><p></p>	f	<p><span style="line-height: 115%;">All math majors.</span><br></p>	<p style="line-height: normal;"><span style="">The frequency will  depend on the core area. It will be at least once a year as discussed in point  5 above. It will be done each time the courses listed above are offered. For  some courses, this is every Fall or Spring semester. For other courses, it is  once a year.</span></p>	The assessment coordinator for that area of concentration will collect exam questions as described above. The student’s work on that exam question will be rated into exactly one of the following four categories:  Unsatisfactory, Satisfactory, Good, Very Good.	70	42	14	f	43	1	O
50	2020-11-05	<p style=""><b>Initially,  the total number of oral presentations given by math majors would be noted each  semester.&nbsp;</b><b style="">These  presentations could be in a number of different venues or settings, such as  departmental colloquiums, national or sectional meetings of mathematical groups  or associations, presentations given to local companies, etc. Eventually, an  oral presentation of some kind might be mandatory, at least for all&nbsp;</b><b style="">Mathematics  majors declaring a core area of concentration.</b></p>	t	<p>Done each semester</p>	f	<p><span style="line-height: 115%;">When oral presentations are required, those students  declaring a core area of study.</span><br></p>		Students will present a sample of their work at one of the venues/settings. Described in Point 2 above.	70	43	14	t	44	1	S
51	2020-11-05	<p style=""><b>For this SLO,&nbsp; student works will be collected on an exam  question which measures overall comprehension. It is possible that one or more  of the exam questions collected to measure SLO 1 above could also be used to measure this SLO.</b></p>	f	<p style="">This is the same as for SLO 1. See Additional Comment for  SLO 1.</p>	f	<p>All math majors.</p>		The assessment coordinator for that area of concentration will collect exam questions as described above. The student’s work on that exam question will be rated into exactly one of the following four categories:  Unsatisfactory, Satisfactory, Good, Very Good.	70	44	14	f	45	1	Y
52	2020-11-09	<p><span style="line-height: 115%;">Biomechanics is an interdisciplinary field,  requiring the culmination of knowledge from anatomy and physiology,  engineering, biology, physics, and other STEM fields. Final examination scores  from Anatomy and Physiology, Statics &amp; Dynamics, and Biomechanics will  determine the student’s ability to synthesize knowledge obtained from these  core courses.&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 2400, BMCH 3000, and  BMCH 4630</span><br></p>	t			Students will score at or above 70% on final examinations for all courses evaluated.	70	45	18	f	49	1	S
53	2020-11-09	<p>The application of knowledge section of the capstone project rubric evaluates the students’ ability to synthesize knowledge gained throughout the degree program as applied to the capstone design project. It is scored by the Phase I rubric, item 1c, Phase II rubric, items 1c, 2a, 2b, 2c, 3a, and 3b.&nbsp;</p><p><br></p><p>Concepts learned from core biomechanics courses, as well as STEM courses, such as Calculus, Physics, and Biology, are necessary for the creation of the capstone project. An indirect measure that will be used is the final grade in selected STEM classes; Calculus and Physics. The final grade in these courses will be compared to the scores on the rubrics to determine application of knowledge from these courses.&nbsp;&nbsp;</p><br>	f	<p><span style="line-height: 115%;">As part of BMCH 4990</span><br></p>	t			Students will score at or above meets expectations on the project details and strategies section of the Phase I rubric (1c), and project details and strategies, design fabrication, design evaluation sections of the Phase II rubric (1c, 2a, 2b, 2c, 3a, and 3b) for the proposal and final capstone project.	90	46	18	f	49	2	Y
54	2020-11-09	<p><span style="line-height: 115%;">Written laboratory reports from Laboratory Methods  in Biomechanics I and II require students to synthesize information learned in  the laboratory methods courses and disseminate this information in a written  report. It is scored by a rubric created by the course instructor (see  attachment 4).&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 4200 and BMCH 4210</span><br></p>	t			Students will have at or above 70% average on all written laboratory reports.	70	47	18	f	50	1	S
55	2020-11-09	<p><span style="line-height: 115%;">The purpose of the capstone design project is for  students to develop solutions to real problems in the biomechanics and  health-care related fields. The ability to develop these solutions requires the  student to synthesize research from biomechanics and related fields and present  the proposed design project to faculty advisors and sponsors. It is scored by  the Phase I rubric, items 7a and 7b.&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 4980</span><br></p>	t			Students will score at or above meets expectations on the oral communications skills section of the Phase I rubric (items 7a and 7b).	90	48	18	f	50	2	Y
56	2020-11-09	<p><span style="line-height: 115%;">The purpose of the capstone design project is for students  to develop solutions to real problems in the biomechanics and health-care  related fields. The ability to develop these solutions requires the student to  synthesize research, conduct experimental testing, and produce a workable  prototype. Students will be evaluated on both content and presentation of their  project to faculty advisors and sponsors. It is scored by the Phase II rubric,  items 9a and 9b.&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 4990</span><br></p>	t			Students will score at or above meets expectations on the oral communication skills section of the Phase II rubric (item 9a and 9b).	90	49	18	t	50	3	Y
66	2020-11-09	<p>Students' scores on their capstone project and site supervisors' final evaluation will be used to determine&nbsp;<span style="">their professional disposition, applied knowledge, and development and management of a project.</span></p>	t	<p>N/A</p>	t			Students will score a 3 (meets expectations) in professional responsibility and disposition and application of specialized knowledge as measured by the current internship evaluation instrument. This instrument was revised in spring 2018 to reflect expectations of the revised SLO which included items specific to content knowledge. Using this evaluation instrument students will score a 7 (more than adequate). Students will also score a 70% on their final capstone project.	80	59	19	f	56	1	S
372	2020-12-03	<p><span style="line-height: 107%;">Students are evaluated using direct observation and review of work products at the end of their internship by the university supervisor and the field-based supervisor.&nbsp; They also produce an internship portfolio that showcases work completed during the internship relevant to this SLO (and others).&nbsp; Evaluation of SLO 11 is broken down into two sections: Rapport and General Performance Characteristics. Each section contains multiple Likert scale items on which the student is scored based on supervisor observations and portfolio content.&nbsp; Ratings are made on the School Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	317	1	Y
57	2020-11-09	<p><span style="line-height: 115%;">The purpose of the capstone design project is for  students to develop solutions to real problems in the biomechanics and  health-care related fields. The ability to develop these solutions requires the  student to synthesize research, conduct experimental testing, and produce a  workable prototype. &nbsp;A written final  report that incorporates all phases of the capstone design course will be  submitted to faculty advisors and sponsors. It is scored by the Phase II  rubric, item 8a.&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 4990</span><br></p>	t			Students will score at or above meets expectations on the written communication skills section of the Phase II rubric (item 8a).	90	50	18	f	50	4	Y
58	2020-11-09	<p><span style="line-height: 115%;">The purpose of the capstone design project is for  students to develop solutions to real problems in the biomechanics and  health-care related fields. The ability to develop these solutions requires the  student synthesize content knowledge from multiple fields, demonstrate  effective laboratory and written communication skills, and provide the written proposal  of their capstone project to faculty advisors and sponsors. It is scored by the  Phase I rubric, items 1a, 1b, and 2a.&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 4990</span><br></p>	t			Students will score at or above meets expectations on the project details and strategies and literature review  sections of the Phase I rubric (items 1a, 1b, and 2a) for the written portion of the proposal.	90	51	18	f	51	1	Y
59	2020-11-09	<p><span style="line-height: 115%;">The purpose of the capstone design project is for  students to develop solutions to real problems in the biomechanics and  health-care related fields. The ability to develop these solutions requires the  student to synthesize content knowledge from multiple fields, demonstrate effective  laboratory and oral communication skills, and present the proposed design  project to faculty advisors and sponsors. It is scored by the Phase I rubric,  items 1a, 1b, and 2a.&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 4990</span><br></p>	t			Students will score at or above meets expectations on the project details and strategies and literature review  sections of the Phase I rubric (items 1a, 1b, and 2a) for the oral presentation portion of the proposal.	90	52	18	f	51	2	Y
60	2020-11-09	<p><span style="line-height: 115%;">The purpose of the capstone design project is for  students to develop solutions to real problems in the biomechanics and  health-care related fields. The ability to develop these solutions requires the  student apply content knowledge from multiple fields, plan, design, create, and  test a relevant tool related to biomechanics, and provide the written final  report of their capstone project to faculty advisors and sponsors. It is scored  by the Phase II rubric, items 1c, 2a, 2b, 2c, 3a, and 3b.</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 4990</span><br></p>	t			Students will score at or above meets expectations on the project details and strategies, design fabrication, design evaluation sections of the Phase II rubric (items 1c, 2a, 2b, 2c, 3a, and 3b) for the written portion of the proposal.	90	53	18	f	52	1	Y
61	2020-11-09	<p><span style="line-height: 115%;">The purpose of the capstone design project is for  students to develop solutions to real problems in the biomechanics and  health-care related fields. The ability to develop these solutions requires the  student to apply content knowledge from multiple fields, plan, design, create,  and test a relevant tool related to biomechanics, and present the final design  project to faculty advisors and sponsors. It is scored by the Phase II rubric,  items 1c, 2a, 2b, 2c, 3a, and 3b.</span><br></p>	f	<p><span style="line-height: 115%;">As part of BMCH 4990</span><br></p>	t			Students will score at or above meets expectations on the project details and strategies, design fabrication, design evaluation sections of the Phase II rubric (items 1c, 2a, 2b, 2c, 3a, and 3b) for the oral presentation portion of the proposal.	90	54	18	f	52	2	Y
62	2020-11-09	<p>Students final examination scores will be used to determine their level of mastery of content knowledge&nbsp;<span style="">specific to physiology of exercise and biomechanics.</span></p>	f	<p>As part of PE 4940 and BMCH 4630<br></p>	t			Students will score at or above 70% on the final examination for each of the two identified classes.	80	55	19	f	53	1	S
64	2020-11-09	<p>Students' scores on their capstone project and site supervisor final evaluation will be used to determine their&nbsp;<span style="">level of mastery of their written, oral, visual, and electronic presentation skills.</span></p>	t	<p>As part of PE 4910<br></p>	t			Students will score at or above 70% in writing skills and oral communication as measured by the current capstone project rubric. As of Fall of 2018, students completed a capstone project in conjunction with their internship. A copy of the capstone project is included with this document, with the assessment rubric, and will measure written, oral, visual, and electronic presentation skills.	80	57	19	f	55	1	S
65	2020-11-09	<p>Students' scores in written and practical exams for each of the three sections (cardiorespiratory fitness,&nbsp;<span style="">muscular fitness, and body composition) will be used to determine their ability to apply their content&nbsp;</span><span style="">knowledge in the creation of individualized exercise testing and prescription programs.</span></p>	f	<p>As part of PE 4010<br></p>	t			Students will score at or above 70% on each of the three written and practical exams (cardiorespiratory fitness, muscular fitness, and body composition).	80	58	19	f	54	1	S
249	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	50	f	194	1	S
183	2020-11-10	<p>Proficiency in leading/ engaging community stakeholders in addressing urban issues or problems.<br></p>	f	<p>Assessment is part of PA 8990 (Urban Studies Capstone)<br></p>	t			100% complete PA 8990 (Pass/Fail) on first attempt (Note that this is a pass/fail course.)	100	151	41	f	144	2	S
69	2020-11-09	<p><span style="line-height: 107%;">The Praxis II Content Exam is a national  standardized examination administered by the Educational Testing Service and is  aligned to the Content Knowledge subscale of SLO 2.&nbsp; The exam tests special education teacher candidates’  knowledge in special education core knowledge and skills.&nbsp; Students completing a special education  program must complete the Special Education: Core Knowledge and Applications  (#5354) examination that includes the following subscales:&nbsp; Development and Characteristics of Learners; Planning  and the Learning Environment; Instruction; Assessment; and Foundations and  Professional Responsibilities.</span><br></p>	f	<p><span style="line-height: 107%;">During the final year of a candidate’s degree program (based  on test administration dates set by the Educational Testing Service)</span><br></p>	t			Special education teacher candidates will score at or above the cut score as established by the Nebraska Department of Education.	90	62	20	f	58	2	Y
70	2020-11-09	<p style="">Specific items are  aligned to each of the subscales.<b></b></p><p>    </p><p style="">Items 7-8 align with  Assessment,  Item 9 aligns with Planning for Instruction, Items 10-12 align Instructional  Strategies<b></b></p>	t	<p>During clinical practice semester* (the final 12 credit hours of the degree program)<br></p>	t			Teacher candidates will be scored as Advanced or Proficient by the mentor teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	63	20	f	59	1	S
347	2020-12-03	<p><span style="line-height: 107%;">Students collect and  present evidence of attainment of the program objective from course work and  other sources, prepare an original statement that documents their experiences  and evidence relative to the SLO, and respond to questions about the SLO posed  by faculty in an oral defense meeting.&nbsp;  Evaluation of SLO 3 is broken down into three sections: Student (a) interprets, recommends, and supports accountability standards and procedures; (b) knows when and how to use empirically validated academic intervention strategies; and (c) suggests and is able to apply appropriate cognitive/academic intervention monitoring methods.&nbsp; Each section contains multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.</span><br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	321	1	Y
71	2020-11-09	<p style="">Specific items are  aligned to two of the SLOs subscales.&nbsp; <b></b></p><p>    </p><p style="">Items 1-5 align Instructional Strategies, Items 6-10 align  with Assessment.<b></b></p>	t	<p>During clinical practice semester* (the final 12 credit hours of the degree program)<br></p>	t			Teacher candidates will be scored as Target by the evaluators. (Each teacher candidate is independently scored by two evaluators.  In cases where evaluators differ on scores, scores are reconciled by a third evaluator).  Measure has a three-point scale:  Target, Approaching Target, and Below Target	90	64	20	f	59	2	S
72	2020-11-09	<p style="">Specific items are  aligned to each of the subscales. <b></b></p><p>    <span style="line-height: 107%;">Item  13 aligns with Professional Learning and Ethical Practice, Items 14-15 align  with Leadership and Collaboration</span><br></p>	t	<p>During clinical practice semester* (the final 12 credit hours of the degree program)<br></p>	t			Teacher candidates will be scored as Advanced or Proficient by the mentor teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	65	20	f	60	1	S
73	2020-11-09	<p>The assignment requires the students to work together to create a three-dimensional model of the subsystems of speech; to label the structures; to present to the class the model created with identification of the structures and explanation of the functions of each component; and each individual student to submit a written paper describing the anatomy and physiology of the subsystem. (CFCC Standard IV)<br></p>	f	<p>In class and in submitted paper<br></p>	t			A score of 2-3 on the rubric	80	66	22	f	65	1	Y
74	2020-11-09	<p>Students will demonstrate integration &amp; application of the assessment &amp; treatment-related principles discussed in class and in text, using a client profile to plan treatment. This assignment requires integration across the multiple domains &amp; aspects of human communication, communication disorders, causal &amp; related factors, cognitive &amp; social implications, &amp; the individual needs of the presenting case. In constructing the project portfolio, students must access research to support the evidence based practices, plan for appropriate formal &amp; informal assessment, design &amp; justify a treatment approach, &amp; provide evidence of the ability to collect treatment data, analyze treatment data in view of the assessment findings, set treatment goals appropriate to the client, &amp; utilize standard reporting forms and methods (e.g., IEP, SOAP notes) for the client’s treatment setting. (CFCC Standard IV)<br></p>	f	<p>In final paper submitted and presented in class<br></p>	t			2-3 on the rubric	80	67	22	f	66	1	Y
75	2020-11-09	<p><span style="">Students in the profession are required to compose reports and other professionally written documents during graduate school and as professionals. The addition of the AACU rubric is a measure of students’ writing abilities, as defined by the rubric, and an indication of potential proficiency in constructing a written paper. (CFCC Standard IV)</span><br></p>	f	<p>Paper submitted in each of the two classes.<br></p>	t			2-3 on the rubric	80	68	22	f	67	1	S
76	2020-11-09	<p><span style="line-height: 107%;">Specific items are aligned to each of the subscales.<b>  </b>Item 1 aligns with Learner Development, Item 2 aligns with Learner  Differences, Item 3 aligns with Learning Environments.</span><br></p>	t	<p>During clinical practice semester* (the final 12 credit&nbsp;<span style="">hours of the degree program)</span></p><br>	t			Teacher candidates will be scored as Advanced or Proficient on each item by the mentor teacher and university supervisor.  Measure has a four point scale:  Advanced, Proficient, Developing, Below Standard.	90	69	23	f	68	1	S
77	2020-11-09	<p><span style="line-height: 107%;">Specific items are aligned to each of the subscales.<b>&nbsp; </b>Items 4-5 align with Content Knowledge,  Item 6 aligns with Application of Content.</span><br></p>	t	<p>During clinical practice semester* (the final 12 credit hours of the degree program)<br></p>	t			Teacher candidates will be scored as Advanced or Proficient on each item by the mentor teacher and university supervisor.  Measure has a four point scale:  Advanced, Proficient, Developing, Below Standard.	90	70	23	f	69	1	S
126	2020-11-09	<p>The measure assesses the student’s ability to articulate personal artistic voice in a written, oral and/or&nbsp;<span style="">multimedia form.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	104	30	f	95	1	S
78	2020-11-09	<p><span style="line-height: 107%;">The Praxis II Content Exam is a national  standardized examination administered by the Educational Testing Service and is  aligned to the Content Knowledge subscale of SLO 2.&nbsp; Candidates in this degree take version 5024 –  Education of Young Children.&nbsp; This test  reports subscale scores on 1) childhood development, 2) observation,  documentation, and assessment, 3) developmentally appropriate practices, 4)  professionalism, family and community, 5) content pedagogy and knowledge, and  6) knowledge of teaching.</span><br></p>	f	<p><span style="line-height: 107%;">During the final year of a candidate’s degree program (based  on test administration dates set by the Educational Testing Service)</span><br></p>	t			Teacher candidates will score at or above the cut score as established by the Nebraska Department of Education.	90	71	23	f	69	2	Y
79	2020-11-09	<p><span style="line-height: 107%;">Specific items are aligned to each of the subscales.<b>&nbsp; </b>Items 7-8 align with </span><span style="line-height: 107%;">Assessment,  Item 9 aligns with Planning for Instruction, Items 10-12 align with Instructional  Strategies.</span><br></p>	t	<p>&nbsp;During clinical practice semester* (the final 12 credit hours of the degree program)<br></p>	t			Teacher candidates will be scored as Advanced or Proficient on each item by the mentor teacher and university supervisor.  Measure has a four point scale:  Advanced, Proficient, Developing, Below Standard.	90	72	23	f	70	1	S
80	2020-11-09	<p style=""><b><i><span style="font-weight: normal; line-height: normal;">&nbsp;</span></i></b>Specific items are  aligned to two of the SLOs subscales.&nbsp; <b></b></p><p>    </p><p style="">Items 1-5 align with Instructional Strategies,  Items 6-10  align with Assessment.<b></b></p>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			Teacher candidates will be scored as Target by at least one of the evaluators. Measure has a three point scale:  Target, Approaching Target, Below Target	90	73	23	f	70	2	S
250	2020-11-11	<p><span style="">Specific items aligned with each of the SLOS (CEC  Standards). See rubric for alignment.</span><br></p>	t	<p><span style="">This assessment occurs during the candidate’s final semester  in the program.</span><br></p>	t			4 out of 7 (2017-2018) and 6 out of 8 (2018-2019)	85	180	50	f	195	1	S
251	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	50	f	195	2	S
81	2020-11-09	<p><span style="line-height: 107%;">Specific items are aligned to each of the subscales.  </span><span style="line-height: 107%;">Item  13 aligns with Professional Learning and Ethical Practice, Items 14-15 align  with Leadership and Collaboration.</span><br></p>	t	<p><span style="line-height: 107%;">&nbsp;During clinical  practice semester* (the final 12 credit hours of the degree program)</span><br></p>	t			Teacher candidates will be scored as Advanced or Proficient on each item by the mentor teacher and university supervisor.  Measure has a four point scale:  Advanced, Proficient, Developing, Below Standard.	90	74	23	f	71	1	S
82	2020-11-09	<p style=""><span style="">Specific  items are aligned to each of the subscales.<b> </b></span></p><p>    </p><p style=""><span style="">2016-17:<b>&nbsp; </b>Items  1-3 align with Learner Development, Items 4-5 align with Learner Differences,  Items 6-8&nbsp; align with Learning  Environments<b></b></span></p>	t	<p>&nbsp;During clinical practice semester* (the final 12 credit&nbsp;<span style="">hours of the degree program)</span></p><br>	t			2016-2017: Teacher candidates will be scored as Consistent or Frequent by the mentor teacher and university supervisor.  Measure has a four-point scale:  Consistent, Frequent, Occasional, and Rare.  2017-2018:  Teacher candidates will be scored as Advanced or Proficient on each item by the mentor teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	75	24	f	72	1	S
83	2020-11-09	<p>Specific items are aligned to each of the subscales.</p><p>2016-17:&nbsp; &nbsp;Items 9-11 align with Content Knowledge, Items 12-13 align with Application of Content</p><p><br></p><p>2017-18:&nbsp; Items 4-5 align with Content Knowledge, Item 6 aligns with Application of Content</p><br>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			2016-2017: Teacher candidates will be scored as Consistent or Frequent by the mentor teacher and university supervisor.  Measure has a four-point scale:  Consistent, Frequent, Occasional, and Rare.  2017-2018:  Teacher candidates will be scored as Advanced or Proficient by the mentor Teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	76	24	f	73	1	S
84	2020-11-09	<p><span style="line-height: 107%;">The Praxis II Content Exam is a national  standardized examination administered by the Educational Testing Service and is  aligned to the Content Knowledge subscale of SLO 2.&nbsp; The exam tests teacher candidates’ knowledge  in the subject areas taught in elementary schools.&nbsp; The examination includes the following  subscales:&nbsp; Reading and Language Arts;  Mathematics; Science; Social Studies; and Art, Music and Physical Education.</span><br></p>	f	<p><span style="line-height: 107%;">During the final year of a candidate’s degree program (based  on test administration dates set by the Educational Testing Service)</span><br></p>	t			Teacher candidates will score at or above the cut score as established by the Nebraska Department of Education.	90	77	24	f	73	2	Y
85	2020-11-09	<p style=""><b><i><span style=""><span style="font-weight: normal; line-height: normal;">&nbsp;&nbsp;</span></span></i></b><span style="">Specific  items are aligned to each of the subscales.<b></b></span></p><p style=""><span style="">2016-17:&nbsp;  Items 14-15 align with </span><span style="">Assessment, Items 16-18 align with Planning  for Instruction, Items 19-21 align with Instructional Strategies</span><span style=""> </span></p><p style=""><span style="">&nbsp;</span></p><p>            </p><p style=""><span style="">2017-18:&nbsp;  Items 7-8 align with </span><span style="">Assessment, Item 9 aligns with  Planning for Instruction, Items 10-12 align with Instructional Strategies</span><b><span style=""></span></b></p>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			2016-2017: Teacher candidates will be scored as Consistent or Frequent by the mentor teacher and university supervisor.  Measure has a four-point scale:  Consistent, Frequent, Occasional, and Rare.  2017-2018:  Teacher candidates will be scored as Advanced or Proficient by the mentor teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	78	24	f	74	1	S
86	2020-11-09	<p style=""><b><i><span style=""><span style="font-weight: normal; line-height: normal;">&nbsp;</span></span></i></b><span style="">Specific  items are aligned to two of the SLOs subscales.&nbsp;  <b></b></span></p><p>    </p><p style=""><span style="">Items 1-5 align with Instructional Strategies,  </span><span style="">Items 6-10 align with </span><span style="">Assessment.</span><b><span style=""></span></b></p>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			Teacher candidates will be scored as Target by the evaluators. (Each teacher candidate is independently scored by two evaluators.  In cases where evaluators differ on scores, scores are reconciled by a third evaluator).  Measure has a three-point scale:  Target, Approaching Target, and Below Target	90	79	24	f	74	2	S
87	2020-11-09	<p style=""><span style="">Specific  items are aligned to each of the subscales. <b></b></span></p><p>    </p><p style="margin-right: 0in; margin-left: 16.85pt; line-height: normal;"><span style="">2016-17:&nbsp; Items 22-24 align with</span><span style="">  Professional Learning and Ethical Practice, Items 25-26 align with Leadership  and Collaboration</span></p>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			2016-2017: Teacher candidates will be scored as Consistent or Frequent by the mentor teacher and university supervisor.  Measure has a four-point scale:  Consistent, Frequent, Occasional, and Rare.  2017-2018:  Teacher candidates will be scored as Advanced or Proficient by the mentor teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	80	24	f	75	1	S
109	2020-11-09	<p><span style="line-height: 107%;">Based  on a rubric of criteria that directs each presenter to educate the class on how  to understand and enjoy a chosen work, including analyzing its form, diction,  line and verse choices, form and meanings. Student is assessed on correct  terminology, appropriate planning and timing.</span><br></p>	t	<p><span style="line-height: 107%;">WRWS 4210, 3200, 2200&nbsp;  Poetry Writing Studio</span><br></p>	t			Proficiency requires a score of 18 out of 25 or higher.	85	96	28	f	88	1	Y
130	2020-11-09	<p style="">Background on play is used to inform themed  description and synopsis.&nbsp;<span style="">Creating a summary of a Greek  tragedy to inform / attract an audience</span></p><p style=""></p>	f	<p>3rd or 4th year of program</p><p>Assessment captured in THEA 4780 – History of Theatre<br></p>	f	<p><span style="line-height: 107%;">Assessment captured in THEA 4780 – History of Theatre</span><br></p>		A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	108	31	f	96	2	Y
88	2020-11-09	<p style=""><span style="">Specific  items are aligned to each of the subscales.<b> </b></span></p><p>    </p><p style=""><span style="">2016-17:<b>&nbsp; </b>Items  1-3 align with Learner Development, Items 4-5 align with Learner Differences,  Items 6-8&nbsp; align with Learning  Environments<b></b></span></p>	t	<p>&nbsp;During clinical practice semester* (the final 12 credit&nbsp;<span style="">hours of the degree program)</span></p><br>	t			2016-2017: Teacher candidates will be scored as Consistent or Frequent by the mentor teacher and university supervisor.  Measure has a four-point scale:  Consistent, Frequent, Occasional, and Rare.  2017-2018:  Teacher candidates will be scored as Advanced or Proficient on each item by the mentor teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	75	25	f	76	1	S
89	2020-11-09	<p>Specific items are aligned to each of the subscales.</p><p>2016-17:&nbsp; &nbsp;Items 9-11 align with Content Knowledge, Items 12-13 align with Application of Content</p><p><br></p><p>2017-18:&nbsp; Items 4-5 align with Content Knowledge, Item 6 aligns with Application of Content</p><br>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			2016-2017: Teacher candidates will be scored as Consistent or Frequent by the mentor teacher and university supervisor.  Measure has a four-point scale:  Consistent, Frequent, Occasional, and Rare.  2017-2018:  Teacher candidates will be scored as Advanced or Proficient by the mentor Teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	76	25	f	77	1	S
90	2020-11-09	<p><span style="line-height: 107%;">The Praxis II Content Exam is a national  standardized examination administered by the Educational Testing Service and is  aligned to the Content Knowledge subscale of SLO 2.&nbsp; The exam tests teacher candidates’ knowledge  in the subject areas taught in elementary schools.&nbsp; The examination includes the following  subscales:&nbsp; Reading and Language Arts;  Mathematics; Science; Social Studies; and Art, Music and Physical Education.</span><br></p>	f	<p><span style="line-height: 107%;">During the final year of a candidate’s degree program (based  on test administration dates set by the Educational Testing Service)</span><br></p>	t			Teacher candidates will score at or above the cut score as established by the Nebraska Department of Education.	90	77	25	f	77	2	Y
91	2020-11-09	<p style=""><b><i><span style=""><span style="font-weight: normal; line-height: normal;">&nbsp;&nbsp;</span></span></i></b><span style="">Specific  items are aligned to each of the subscales.<b></b></span></p><p style=""><span style="">2016-17:&nbsp;  Items 14-15 align with </span><span style="">Assessment, Items 16-18 align with Planning  for Instruction, Items 19-21 align with Instructional Strategies</span><span style=""> </span></p><p style=""><span style="">&nbsp;</span></p><p>            </p><p style=""><span style="">2017-18:&nbsp;  Items 7-8 align with </span><span style="">Assessment, Item 9 aligns with  Planning for Instruction, Items 10-12 align with Instructional Strategies</span><b><span style=""></span></b></p>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			2016-2017: Teacher candidates will be scored as Consistent or Frequent by the mentor teacher and university supervisor.  Measure has a four-point scale:  Consistent, Frequent, Occasional, and Rare.  2017-2018:  Teacher candidates will be scored as Advanced or Proficient by the mentor teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	78	25	f	78	1	S
95	2020-11-09	<p style="">Candidates will access and review  library facilities-related documents in library literature, in print, and in  online resources to create a new floor plan for their library that addresses  the diverse needs of their community.&nbsp;  The assessment illustrates candidates’ understanding of professional  principles and ethics as they design future-ready facilities that are  accessible to underserved populations.</p>	f	<p><span style="line-height: 107%;">TED  4800 Leadership &amp; Management</span><br></p>	t			Target or Approaching Target (upper two categories of a rubric with three performance levels) on all elements.	90	82	26	f	81	1	Y
131	2020-11-09	<p style="">Essay question asks students to  make connections between socio-political historical context and a play.</p>	f	<p>3rd or 4th year of program</p><p>Assessment captured in THEA 4780 – History of Theatre<br></p>	t			A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	109	31	f	96	3	Y
132	2020-11-09	<p><span style="line-height: 107%;">Product relying on  stated design elements to convey story concept/theme</span><br></p>	t	<p><span style="line-height: 107%;">Year one or two</span></p><p><span style="line-height: 107%;"><span style="line-height: 107%;">Assessment captured in THEA 1510 – Foundations of  Production Design</span><br></span><br></p>	t			A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	110	31	f	97	1	Y
252	2020-11-11	<p><span style="">Specific items aligned with each of the SLOS (CEC  Standards). See rubric for alignment.</span><br></p>	t	<p><span style="">This assessment occurs during the candidate’s final semester  in the program.</span><br></p>	t			4 out of 7 (2017-2018) and 6 out of 8 (2018-2019)	85	180	50	f	196	1	S
92	2020-11-09	<p style=""><b><i><span style=""><span style="font-weight: normal; line-height: normal;">&nbsp;</span></span></i></b><span style="">Specific  items are aligned to two of the SLOs subscales.&nbsp;  <b></b></span></p><p>    </p><p style=""><span style="">Items 1-5 align with Instructional Strategies,  </span><span style="">Items 6-10 align with </span><span style="">Assessment.</span><b><span style=""></span></b></p>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			Teacher candidates will be scored as Target by the evaluators. (Each teacher candidate is independently scored by two evaluators.  In cases where evaluators differ on scores, scores are reconciled by a third evaluator).  Measure has a three-point scale:  Target, Approaching Target, and Below Target	90	79	25	f	78	2	S
93	2020-11-09	<p style=""><span style="">Specific  items are aligned to each of the subscales. <b></b></span></p><p>    </p><p style="margin-right: 0in; margin-left: 16.85pt; line-height: normal;"><span style="">2016-17:&nbsp; Items 22-24 align with</span><span style="">  Professional Learning and Ethical Practice, Items 25-26 align with Leadership  and Collaboration</span></p>	t	<p><span style="line-height: 107%;">During clinical practice semester* (the final 12 credit hours  of the degree program)</span><br></p>	t			2016-2017: Teacher candidates will be scored as Consistent or Frequent by the mentor teacher and university supervisor.  Measure has a four-point scale:  Consistent, Frequent, Occasional, and Rare.  2017-2018:  Teacher candidates will be scored as Advanced or Proficient by the mentor teacher and university supervisor.  Measure has a four-point scale:  Advanced, Proficient, Developing, and Below Standard.	90	80	25	f	79	1	S
94	2020-11-09	<p style="">Candidates  utilize various technology to demonstrate core database search functions and  strategies such as Boolean operators, adjacency operators, truncation/wildcards,  and pearl growing/cross referencing.&nbsp; The  assessment illustrates candidates’ abilities to utilize technological tools and  trends to meet their communities’ information needs.</p>	f	<p><span style="line-height: 107%;">TED  4710 Research &amp; Inquiry</span><br></p>	t			Target or Approaching Target (upper two categories of a rubric with three performance levels) on all elements	90	81	26	f	80	1	Y
96	2020-11-09	<p style="">Candidates demonstrate an  understanding of the four fair use factors in U.S. copyright law through a factor  by factor analysis in the use of intellectual property in an assigned scenario.&nbsp; The assessment illustrates candidates’  analytical abilities and understanding of changing information behaviors as  they assess how the scenario does or does not reflect fair use.&nbsp;&nbsp;</p>	f	<p><span style="line-height: 107%;">TED 4740 Organization of Information</span><br></p>	t			Target or Approaching Target (upper two categories of a rubric with three performance levels) on all elements. Rubric attached.	90	83	26	f	82	1	Y
97	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>Within BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors</p>		A level of average proficiency	100	84	27	f	83	1	S
98	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>Within BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors</p>		A level of average proficiency	100	85	27	f	83	2	S
100	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>Within BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors<br></p>		A level of average proficiency	100	87	27	f	83	4	S
99	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>Within BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors</p>		A level of average proficiency	100	86	27	t	83	3	S
101	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>Within BAH thesis process</p>	f	<p>All graduating B.A. in Art History majors<br></p>		A level of average proficiency	100	88	27	f	83	5	S
102	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>In BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors<br></p>		A level of average proficiency	100	89	27	f	84	1	S
103	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>In BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors<br></p>		A level of average proficiency	100	90	27	f	84	2	S
104	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>In BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors<br></p>		A level of average proficiency	100	91	27	f	84	3	S
105	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>In BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors<br></p>		A level of average proficiency	100	92	27	f	85	1	S
106	2020-11-09	<p>Is embedded part of SLO</p>	t	<p>In BAH Thesis process</p>	f	<p>All graduating B.A. in Art History majors<br></p>		A level of average proficiency	100	93	27	f	85	2	S
107	2020-11-09	<p><span style="line-height: 107%;">Students will read a contemporary short-short  story of approximately two pages, identify craft elements within the story, and  write brief explanations of how each craft element contributes to the story’s  entirety.&nbsp; Techniques measured include  point of view, internal and external means of characterization, setting and  scene, as based on a rubric listing the craft elements of fiction.</span><br></p>	t	<p><span style="line-height: 107%;">in Spring 18 in </span><span style="line-height: 107%;">WRWS 2100 and 3100, section 1, Basic and  Intermediate Fiction Studios&nbsp; (the total  amount of students in both section is 17) and in Fall 18 in WRWS 3100  (consisting of 5 students)</span><br></p>	f	<p><span style="line-height: 107%;">Five  students were selected from the abovementioned sections</span><br></p>		Proficiency requires minimum of 70 points out of a possible 90 points.  90 points = A; 80 points = B+; 70 points = C+	85	94	28	f	86	1	S
238	2020-11-11	<p><span style="">Specific items aligned with each of the SLOS (CEC  Standards). See rubric for alignment.</span><br></p>	t	<p><span style="">This assessment occurs during the candidate’s final semester  in the program.</span><br></p>	t			4 out of 7 (2017-2018) and 6 out of 8 (2018-2019)	85	180	49	f	189	1	S
108	2020-11-09	<p><span style="line-height: 107%;">After  crafting 6 to 8 original poems for workshop, students will select three pieces  to revise and polish based on feedback given to them throughout the semester  from classmates and the instructor.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">WRWS 2200, WRWS 3200, WRWS 4210 for Spring 2018;  or in WRWS 2060 in the case of Fall 2018.</span><br></p>	t			Portfolio grade of 18/25 (70%)	90	95	28	f	87	1	Y
110	2020-11-09	<p style="">Students present a 5-minute analysis of a book that influenced their development as a writer, and a 5-minute reading of their original, polished work.&nbsp; Techniques measured include:</p><p style="">•<span style="">\t</span>Fiction: Character development, voice, original language, originality of content, POV, depth of theme, resolution of narrative arc</p><p style="">•<span style="">\t</span>Poetry: Mastery of form and sound, strength and originality of image and language.&nbsp;&nbsp;</p><p style="">•<span style="">\t</span>Creative Nonfiction:&nbsp; narrative voice, originality of language, originality of content, POV, depth of theme.</p><p style="">•<span style="">\t</span>Screenwriting:&nbsp; plot, character development, originality of content, clearly articulated structure.</p>	f	<p><span style="line-height: 107%;">In a mandatory meeting for graduating students at the end of  their final term.</span><br></p>	t			4/5 points based on rubric	90	97	28	f	89	1	S
111	2020-11-09	<p>The measure assesses content specific skills as related to student’s chosen concentration.<br></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	98	29	f	90	1	S
112	2020-11-09	<p>The measure assesses significant content through design and compositional skills.<br></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	99	29	f	90	2	S
113	2020-11-09	<p>The measure assesses conceptual content through evaluation of the student’s coherent body of personal&nbsp;<span style="">work.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	100	29	f	90	3	S
114	2020-11-09	<p>The measure assesses the student’s ability to create a portfolio using professional imaging standards.<br></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	101	29	f	91	1	S
115	2020-11-09	<p>The measure assesses student’s ability to apply knowledge of professional standards.<br></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	102	29	f	91	2	S
116	2020-11-09	<p>The measure assesses student’s ability to create a portfolio that reflects the standards of their chosen art&nbsp;<span style="">discipline.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	103	29	f	91	3	S
117	2020-11-09	<p>The measure assesses the student’s ability to articulate personal artistic voice in a written, oral and/or&nbsp;<span style="">multimedia form.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	104	29	f	92	1	S
118	2020-11-09	<p>The measure assesses student’s ability to analyze and explain significant content in their work in a written,&nbsp;<span style="">oral and/or multimedia form.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	105	29	f	92	2	S
119	2020-11-09	<p>The measure assess the student’s ability to define their works place in a historical and/or contemporary&nbsp;<span style="">context.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	106	29	f	92	3	S
120	2020-11-09	<p>The measure assesses content specific skills as related to student’s chosen concentration.<br></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	98	30	f	93	1	S
121	2020-11-09	<p>The measure assesses significant content through design and compositional skills.<br></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	99	30	f	93	2	S
122	2020-11-09	<p>The measure assesses conceptual content through evaluation of the student’s coherent body of personal&nbsp;<span style="">work.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	100	30	f	93	3	S
123	2020-11-09	<p>The measure assesses the student’s ability to create a portfolio using professional imaging standards.<br></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	101	30	f	94	1	S
124	2020-11-09	<p>The measure assesses student’s ability to apply knowledge of professional standards.<br></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	102	30	f	94	2	S
125	2020-11-09	<p>The measure assesses student’s ability to create a portfolio that reflects the standards of their chosen art&nbsp;<span style="">discipline.</span></p>	t	<p>N/A</p>	f	<p>Graduation Lists and SLO Rubrics are sent to all Studio Faculty. Faculty fill out the SLO</p><p>Rubrics for each student they advise. Response percentages vary per semester.</p>		A level of average proficiency	100	103	30	f	94	3	S
133	2020-11-09	<p><span style="line-height: 107%;">Product &amp;  performance relying on all design elements for expressions of story  concept/theme</span><br></p>	t	<p><span style="line-height: 107%;">Year one or two</span></p><p><span style="line-height: 107%;"><span style="line-height: 107%;">Assessment captured in THEA 1510 – Foundations of  Production Design</span><br></span><br></p>	t			A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	111	31	f	97	2	Y
136	2020-11-09	<p><span style="line-height: 107%;">Students had to  research source material for the final scene and present it orally to the  class.</span><br></p>	f	<p><span style="line-height: 107%;">3-4 year</span></p><p><span style="line-height: 107%;"><span style="line-height: 107%;">Assessment captured in THEA 4440 – Directing II</span><br></span><br></p>	f	<p><span style="line-height: 107%;">Assessment captured in THEA 4440 – Directing II</span><br></p>		A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	114	31	f	99	1	Y
355	2020-12-03	<p><span style="line-height: 107%;">Students collect and present evidence of attainment of the program objective from course work and other sources, prepare an original statement that documents their experiences and evidence relative to the SLO, and respond to questions about the SLO posed by faculty in an oral defense meeting.&nbsp; Evaluation of SLO 11 is broken down into two sections: Rapport and General Performance Characteristics.&nbsp; These sections contain multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.</span><br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	329	1	Y
134	2020-11-09	<p style="">&nbsp; &nbsp; Product relying on stated design elements to convey story concept/theme</p>	t	<p><span style="line-height: 107%;">Year one or two</span></p><p><span style="line-height: 107%;"><span style="line-height: 107%;">Assessment captured in THEA 1510 – Foundations of  Production Design</span><br></span><br></p>	f	<p><span style="line-height: 107%;">Assessment captured in THEA 1510 – Foundations of  Production Design</span><br></p>		A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	112	31	f	97	3	Y
135	2020-11-09	<p style="">Each position &nbsp;requires proficiencies and evaluations in  organization, multi-tasking, communications<span style="">&nbsp;and making deadlines.&nbsp;&nbsp;</span></p><p style=""></p>	f	<p><span style="line-height: 107%;">Year 1-4&nbsp;</span></p><p><span style="line-height: 107%;"><span style="line-height: 107%;">Assessment captured in THEA 1010 – Theatre Practicum</span><br></span><br></p>	f	<p><span style="line-height: 107%;">Assessment captured in THEA 1010 – Theatre Practicum</span><br></p>		A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	113	31	f	98	1	Y
137	2020-11-09	<p style="">Students proposed a variety of  acting choices an approach to their student actors, and adapted to actor  absences, changing performance conditions and consequent time constraints which  might negatively affect their final presentations.</p>	f	<p><span style="line-height: 107%;">&nbsp;3-4 year</span></p><p><span style="line-height: 107%;"><span style="line-height: 107%;">Assessment captured in THEA 4440 – Directing II</span><br></span><br></p>	f	<p><span style="line-height: 107%;">Assessment captured in THEA 4440 – Directing II</span><br></p>		A score of 2.92 or higher (73% or higher) on the rubrics (see attachment) is considered proficient.	73	115	31	f	99	2	Y
138	2020-11-09	<p>The Research Paper assignment was designed to integrate multiple (minimum of two) academic disciplines to&nbsp;<span style="">understand and articulate an identified problem. The student engages their critical thinking skills to comprehensively&nbsp;</span><span style="">explore a complex problem by utilizing evidence and evaluation to form a specific position on the issue within the&nbsp;</span><span style="">context of their individualized program of study.</span></p>	f	<p>GDRH 3010—Multidisciplinary Writing Capstone<br></p>	f	<p>17 BMS students enrolled in GDRH 3010 in Fall 2019.<br></p>		70% or above on Research Paper assignment.	100	116	32	f	100	1	Y
139	2020-11-09	<p>The Policy Paper assignment was designed to integrate multiple (two or more) academic disciplines to craft a solution&nbsp;<span style="">to an identified problem through analysis, development, and recommendation of a policy to address a complex issue.</span></p>	f	<p>GDRH 3010—Multidisciplinary Writing Capstone<br></p>	f	<p>17 BMS students enrolled in GDRH 3010 in Fall 2019.<br></p>		70% or above on Policy Paper assignment.	100	117	32	f	101	1	Y
140	2020-11-09	<p>The Podcast assignment was developed for students to create and appropriately deliver a presentation of a proposed&nbsp;<span style="">solution reflecting a multidisciplinary approach connecting to their individualized program of study and the complex&nbsp;</span><span style="">issue explored in the course.</span></p>	f	<p>GDRH 3010—Multidisciplinary Writing Capstone<br></p>	f	<p>17 BMS students enrolled in GDRH 3010 in Fall 2019.<br></p>		70% or above on Podcast assignment.	100	118	32	f	102	1	Y
141	2020-11-09	<p style=""><span style="">Students will  demonstrate proficiency in three formal papers involving emergency management  concepts and application. The grade of these formal papers demonstrates student  understanding of emergency management history, policy, and theory in writing  and oral formats.</span></p>	f	<p>During the 2nd , 3rd and 4th year of the program<br></p>	f	<p><span style="line-height: 107%;">1 section each of EMGT 2050, EMGT 3040 &amp; EMGT 4060  each year</span><br></p>		70% or above is a passing score.	85	119	33	f	103	1	Y
142	2020-11-09	<p><span style="">Students will demonstrate  critical thinking skills applied to emergency management concepts through  formal written graduation research report. This substantial formal paper will  be a minimum of 1</span><span style="">4 pages or longer. Faculty  member reviews paper, provides feedback, and discusses improvements with  students</span></p>	t	<p><span style="line-height: 107%;">As part of Capstone Course</span><br></p>	f	<p><span style="line-height: 107%;">All  students enrolled in EMGT 4990&nbsp;</span><br></p>		70% or above is a passing score	85	120	33	f	104	1	Y
143	2020-11-09	<p style=""><span style="">Students will demonstrate proficiency in  verbal communication through oral presentations involving emergency management  concepts and application. </span><span style="">Students will  deliver a formal presentation on their emergency management graduation research  report in three mandatory courses in the program. Their </span><span style="">15­20 minute presentations demonstrate the ability to  communicate emergency management concepts and efforts effectively.  Presentations are giving using PowerPoint, Keynote, or Prezi software tools</span><b><span style=""></span></b></p>	t	<p>During the 2nd and 3rd year of the program<br></p>	f	<p><span style="line-height: 107%;">Students enrolled in EMGT 3080; EMGT 2050; EMGT 3040</span><br></p>		70% or above is a passing score	85	121	33	f	105	1	Y
144	2020-11-09	<p style="margin-right: 0in; margin-left: 7.5pt; line-height: normal;"><span style="">Students will deliver public presentation on  their emergency management graduation research report. Students will present a </span><span style="">Poster Board presentation open to all UNO faculty and  interested public partners.&nbsp;</span><b></b></p>	t	<p><span style="line-height: 107%;">All  students enrolled in EMGT 4990</span><br></p>	f	<p><span style="line-height: 107%;">All  students enrolled in EMGT 4990</span><br></p>		70% or above is a passing score	85	122	33	f	106	1	Y
145	2020-11-09	<p>N/A</p>	t	<p>N/A</p>	t			N/A	0	123	34	f	107	1	S
185	2020-11-10	<p>Ability to select and utilize analytical tools for collecting, analyzing, interpreting and presenting data to solve problems and/or make decisions.<br></p>	t	<p>Assessment is part of UBNS 8000 (Seminar in Urban Studies)<br></p>	t			Target 90% of students will receive grade of 90% or better on Critical Analysis Report in UBNS 8000	90	153	41	f	146	1	Y
186	2020-11-10	<p>Ability to select and utilize analytical tools for collecting, analyzing, interpreting and presenting data to solve problems and/or make decisions.<br></p>	t	<p>Assessement is part of PA 8120 (Analysis and Decision Making)<br></p>	t			Target 90% of students will receive grade of 90% or better on Research Project Paper in PA 8120	90	154	41	f	146	2	S
146	2020-11-09	<p style="">The final capstone project  includes a number of models whose development requires the application of  traditional and contemporary analysis and design techniques.&nbsp; These are:&nbsp;&nbsp;  modeling of use cases; modeling of functional decomposition; modeling of  data; modeling of process; cost-benefit analysis.&nbsp;&nbsp; These five artifacts are assess using a  rubric developed for each.<b></b></p>	f	<p style="">ISQA 4110 – Information Systems Analysis</p><p>    <span style="line-height: 107%;">ISQA 4120 – Information Systems Design &amp; Implementation</span><br></p>	f	<p><span style="line-height: 107%;">The capstone class is offered twice a year, during the  Spring and during the Summer.&nbsp; The Spring  capstone classes are assessed.</span><br></p>		See rubrics	80	124	34	f	108	1	Y
147	2020-11-09	<p style="">In the final capstone, the  students develop an information system to solve a problem or meet a need of an  organization or company in the community.&nbsp;  The articulation of the idea for an information technology-based  solution is expressed through the modeling of a system workflow.&nbsp;&nbsp; This artifact is assessed using a rubric.<b></b></p>	t	<p style="">ISQA 4110 – Information Systems Analysis</p><p>    <span style="line-height: 107%;">ISQA 4120 – Information Systems Design &amp; Implementation</span><br></p>	f	<p><span style="line-height: 107%;">The capstone class is offered twice a year, during the  Spring and during the Summer.&nbsp; The Spring  capstone classes are assessed.</span><br></p>		See rubric	80	125	34	f	109	1	Y
148	2020-11-09	<p style="">Students prepare a technical  report that consists of several parts, which address multiple audiences, such  as a technical audience and an executive audience.&nbsp; Students also prepare and conduct a  presentation based on this report.</p>	t	<p><span style="line-height: 107%;">The assessment occurs in CIST 3000  Advanced Composition for IS&amp;T</span><br></p>	f	<p><span style="line-height: 107%;">Over half a dozen sections of CIST 3000 are offered  each semester.&nbsp; Usually, assessments are  done in one semester each year.</span><br></p>		See rubric	75	126	34	f	110	1	Y
149	2020-11-09	<p style="">Students work on teams to complete  their final capstone project.&nbsp; During the  capstone, they are required to document their work as a team through work  breakdown structures, meeting notes, and progress reports.&nbsp; These work artifacts are the basis of the  assessment of teamwork, using a teamwork rubric.</p>	f	<p style="">ISQA 4110 – Information Systems Analysis</p><p>    <span style="line-height: 107%;">ISQA 4120 – Information Systems Design &amp; Implementation</span><br></p>	f	<p style="line-height: normal;">The  capstone class is offered twice a year, during the Spring and during the  Summer.&nbsp; The Spring capstone classes are  assessed.<span style=""></span></p>		See rubric	80	127	34	f	111	1	Y
150	2020-11-09	<p style="">In carrying out the capstone  project, students must communicate with each other, and document some of this  communication.&nbsp; The communication as  documented in the final capstone project is assessed using an appropriate  rubric.</p>	f	<p style="">ISQA 4110 – Information Systems Analysis</p><p>    <span style="line-height: 107%;">ISQA 4120 – Information Systems Design &amp; Implementation</span><br></p>	f	<p><span style="line-height: 107%;">The capstone class is offered twice a year, during the  Spring and during the Summer.&nbsp; The Spring  capstone classes are assessed.</span><br></p>		See rubric	80	128	34	f	112	1	Y
151	2020-11-09	<p style="">In their capstone classes,  students design, integrate, implement, and evaluate an information system to  meet an organization’s need.&nbsp; This  process involves defining the platform architecture, an interface design, and  application architecture, an implementation plan, a test plan, and a user  manual, all supporting the creation of an actual database application.&nbsp; The artifacts developed for the capstone are  assessed using a set of rubrics.</p>	f	<p style="">ISQA 4110 – Information Systems Analysis</p><p>    <span style="line-height: 107%;">ISQA 4120 – Information Systems Design &amp; Implementation</span><br></p>	f	<p><span style="line-height: 107%;">The capstone class is offered twice a year, during the  Spring and during the Summer.&nbsp; The Spring  capstone classes are assessed.</span><br></p>		See rubric	80	129	34	f	113	1	Y
152	2020-11-09	<p style="">As students work on their capstone  project, then must apply a variety of project management techniques and  processes.&nbsp; These techniques and  processes are reflected in a number of artifacts, including a work breakdown  structure/task list, a schedule, a resource breakdown structure, and an updated  project plan.&nbsp; Each of these is assessed  using an appropriate rubric.</p>	f	<p style="">ISQA 4110 – Information Systems Analysis</p><p>    <span style="line-height: 107%;">ISQA 4120 – Information Systems Design &amp; Implementation</span><br></p>	f	<p><span style="line-height: 107%;">The capstone class is offered twice a year, during the  Spring and during the Summer.&nbsp; The Spring  capstone classes are assessed.</span><br></p>		See rubric	80	130	34	f	114	1	Y
153	2020-11-09	<p><span style="line-height: 115%;">For the capstone course, students are required to  write a research paper or project that involves a literature review, data  collection and analysis, and write up of results.</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">Approximately 12 to 15 students are enrolled in the capstone  course every semester. This report includes data spanning four semesters. We  used a sampling rate of approximately 25% and evaluated a total of 11 student  theses/projects.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	131	35	f	115	1	Y
154	2020-11-09	<p><span style="line-height: 115%;">Capstone students are required to give a  professional presentation over their thesis/project to the entire class. All  thesis/project presentations are video recorded.&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">The presentations assessed corresponded with the 11  theses/projects reviewed.&nbsp;</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	132	35	f	116	1	Y
155	2020-11-09	<p><span style="line-height: 115%;">As part of their thesis/project presentation,  students are required to create and use presentation software, such as  PowerPoint or Prezi.</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">The presentations assessed corresponded with the 11  theses/projects reviewed.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	133	35	f	117	1	Y
156	2020-11-09	<p><span style="line-height: 115%;">For the capstone course, students are required to  write a research paper or project that involves a literature review, data  collection and analysis, and write up of results.</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">Approximately 12 to 15 students are enrolled in the  capstone course every semester. This report includes data spanning four  semesters. We used a sampling rate of approximately 25% and evaluated a total  of 11 student theses/projects.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	134	35	f	118	1	Y
157	2020-11-09	<p><span style="line-height: 115%;">For the capstone course, students are required to  write a research paper or project that involves a literature review, data  collection and analysis, and write up of results.</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">Approximately 12 to 15 students are enrolled in the  capstone course every semester. This report includes data spanning four  semesters. We used a sampling rate of approximately 25% and evaluated a total  of 11 student theses/projects.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	135	35	f	119	1	Y
158	2020-11-09	<p><span style="line-height: 115%;">For the capstone course, students are required to  write a research paper or project that involves a literature review, data  collection and analysis, and write up of results.</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">Approximately 12 to 15 students are enrolled in the capstone  course every semester. This report includes data spanning four semesters. We  used a sampling rate of approximately 25% and evaluated a total of 11 student  theses/projects.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	131	36	f	120	1	Y
159	2020-11-09	<p><span style="line-height: 115%;">Capstone students are required to give a  professional presentation over their thesis/project to the entire class. All  thesis/project presentations are video recorded.&nbsp;</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">The presentations assessed corresponded with the 11  theses/projects reviewed.&nbsp;</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	132	36	f	121	1	Y
160	2020-11-09	<p><span style="line-height: 115%;">As part of their thesis/project presentation,  students are required to create and use presentation software, such as  PowerPoint or Prezi.</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">The presentations assessed corresponded with the 11  theses/projects reviewed.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	133	36	f	122	1	Y
161	2020-11-09	<p><span style="line-height: 115%;">For the capstone course, students are required to  write a research paper or project that involves a literature review, data  collection and analysis, and write up of results.</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">Approximately 12 to 15 students are enrolled in the  capstone course every semester. This report includes data spanning four  semesters. We used a sampling rate of approximately 25% and evaluated a total  of 11 student theses/projects.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	134	36	f	123	1	Y
162	2020-11-09	<p><span style="line-height: 115%;">For the capstone course, students are required to  write a research paper or project that involves a literature review, data  collection and analysis, and write up of results.</span><br></p>	f	<p><span style="line-height: 115%;">As part of the capstone course (CMST  4940)</span><br></p>	f	<p><span style="line-height: 115%;">Approximately 12 to 15 students are enrolled in the  capstone course every semester. This report includes data spanning four  semesters. We used a sampling rate of approximately 25% and evaluated a total  of 11 student theses/projects.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	135	36	f	124	1	Y
163	2020-11-09	<p style="">The portfolios  for all JMC majors must include an academic paper written in a designated  School of Communication critical-thinking class during students’ junior or  senior year at UNO.</p>	f	<p><span style="line-height: 107%;">As part of the journalism/creative  media and public relations and advertising capstone courses (JMC 4460)&nbsp;</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students enrolled were assessed  in the public relations and advertising capstone&nbsp; II in spring 2018 and 6 of &nbsp;___11__ students in the journalism/creative  media capstone II.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent, 3-Good; 2-Adequate; 1-Poor	70	136	37	f	125	1	Y
184	2020-11-10	<p>Be able to Identify the linkages between the built, human, and natural systems (the three concentration tracks)<br></p>	t	<p>Assessment is part of PA 8010 (The Public Economy)<br></p>	t		<p>PA 8010 is offered every two years.<br></p>	Target 90% of students will receive grade of 90% or better on research paper and content exam in PA 8010.	90	152	41	f	145	1	O
187	2020-11-10	<p>3 Measures: 1) Ability to extend new or unique research questions to create new knowledge; 2) Clearly explain the issue/problem to be studied; and 3) Identify a focused and manageable topic that addresses rarely explored issue assessed by the attached rubric<br></p>	f	<p>In the classroom or during a defense<br></p>	f	<p>Approximately 30% of products created are reviewed by the Instructor/chair and Master Program Coordinator<br></p>		The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric.	90	155	42	f	147	1	Y
189	2020-11-10	<p>4 Measures: 1) Ability to develop research design to answer research question, 2) Presents analysis of data in organized fashion; 3) States conclusions consistent with research findings, and 4) Discusses limitations and implications of the work assessed by the attached rubric<br></p>	f	<p>In the classroom or during a defense<br></p>	f	<p>Approximately 30% of products created are reviewed by the Instructor/chair and Master Program Coordinator<br></p>		The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric	90	157	42	f	149	1	Y
191	2020-11-10	<p>2 Measures: 1) clearly and consistently follow an organizational pattern for a presentation, and 2) Delivery methods are consistent with discipline standards assessed by the attached rubric<br></p>	f	<p>As M. A. students defend their completed thesis<br></p>	t		<p>As M. A. students defend their completed thesis<br></p>	The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric.	90	159	42	f	151	1	O
164	2020-11-09	<p><span style="line-height: 107%;">Portfolios for students in the public  relations/advertising sequence must include audio and video news/feature  stories completed from the Media Storytelling I and II classes or other  capstone projects completed with audio/video. Portfolios for students in the  journalism and creative media sequences must include news stories completed for  “Omaha News” TV broadcasts, as well as examples of the student anchoring the  news. Also included are web stories, scripts and radio work.</span><br></p>	f	<p><span style="line-height: 107%;">As part of the journalism/creative  media and public relations and advertising capstone courses (JMC 4460)</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students enrolled were assessed in  the public relations and advertising capstone&nbsp;  II in spring 2018 and 6 of&nbsp; __11___  students in the journalism/creative media capstone II.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent, 3-Good; 2-Adequate; 1-Poor	70	137	37	f	126	1	Y
165	2020-11-09	<p style="">Portfolios for  students in the public relations/advertising sequence must include audio and  video news/feature stories completed from the Media Storytelling I and II  classes or other capstone projects completed with audio/video. Portfolios for  students in the journalism and creative media sequences must include news  stories completed for “Omaha News” TV broadcasts, as well as examples of the  student anchoring the news. Also included are web stories, scripts and radio  work.<span style=""></span></p>	f	<p><span style="line-height: 107%;">As part of the journalism/creative  media and public relations and advertising capstone courses (JMC 4460)</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students were assessed in the  public relations and advertising capstone&nbsp;  II in spring 2018 and 6 of&nbsp; __11___  students in the journalism/creative media capstone II.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent, 3-Good; 2-Adequate; 1-Poor	70	138	37	f	127	1	Y
166	2020-11-09	<p><span style="line-height: 107%;">The portfolios for all JMC majors must include an  academic paper written in a designated School of Communication  critical-thinking class during students’ junior or senior year at UNO.</span><br></p>	f	<p><span style="line-height: 107%;">As part of the journalism/creative  media and public relations and advertising capstone courses (JMC 4460)</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students enrolled in the public  relations and advertising section of JMC 4460 in Spring 2018 and 6 of 11  students in the journalism/creative media section of JMC 4460 were assessed.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	139	37	f	128	1	Y
167	2020-11-09	<p><span style="line-height: 107%;">The portfolios for all JMC majors must include an  academic paper written in a designated School of Communication  critical-thinking course during students’ junior or senior year.</span><br></p>	f	<p><span style="line-height: 107%;">As part of the journalism, creative  media and public relations and advertising capstone courses (JMC 4460)</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students enrolled in the public  relations and advertising section of JMC 4460 in Spring 2018 and 6 of 8  students in the journalism/creative media section of JMC 4460 were assessed.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	140	37	f	129	1	Y
168	2020-11-09	<p style="">The portfolios  for all JMC majors must include an academic paper written in a designated  School of Communication critical-thinking class during students’ junior or  senior year at UNO.</p>	f	<p><span style="line-height: 107%;">As part of the journalism/creative  media and public relations and advertising capstone courses (JMC 4460)&nbsp;</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students enrolled were assessed  in the public relations and advertising capstone&nbsp; II in spring 2018 and 6 of &nbsp;___11__ students in the journalism/creative  media capstone II.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent, 3-Good; 2-Adequate; 1-Poor	70	136	38	f	130	1	Y
169	2020-11-09	<p><span style="line-height: 107%;">Portfolios for students in the public  relations/advertising sequence must include audio and video news/feature  stories completed from the Media Storytelling I and II classes or other  capstone projects completed with audio/video. Portfolios for students in the  journalism and creative media sequences must include news stories completed for  “Omaha News” TV broadcasts, as well as examples of the student anchoring the  news. Also included are web stories, scripts and radio work.</span><br></p>	f	<p><span style="line-height: 107%;">As part of the journalism/creative  media and public relations and advertising capstone courses (JMC 4460)</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students enrolled were assessed in  the public relations and advertising capstone&nbsp;  II in spring 2018 and 6 of&nbsp; __11___  students in the journalism/creative media capstone II.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent, 3-Good; 2-Adequate; 1-Poor	70	137	38	f	131	1	Y
188	2020-11-10	<p>4 Measures: 1) Synthesizes existing knowledge, 2) Ability to make connections across disciplines or sub-fields of discipline 3) Critically evaluates information and sources, 4) Ability to adapt theory and skills to independent research assessed by the attached rubric<br></p>	f	<p>In the classroom or during a defense<br></p>	f	<p>Approximately 30% of products created are reviewed by the Instructor/chair and Master Program Coordinator<br></p>		The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric.	90	156	42	f	148	1	Y
190	2020-11-10	<p>3 Measures: 1) Ability to write with purpose and give consideration to audience, 2) Adheres to conventional discipline format, and 3) Demonstrates competence in discipline-related syntax and mechanics assessed by the attached rubric<br></p>	f	<p>In the classroom or during a defense<br></p>	f	<p>Approximately 30% of products created are reviewed by the Instructor/chair and Master Program Coordinator<br></p>		The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric.	90	158	42	f	150	1	Y
170	2020-11-09	<p style="">Portfolios for  students in the public relations/advertising sequence must include audio and  video news/feature stories completed from the Media Storytelling I and II  classes or other capstone projects completed with audio/video. Portfolios for  students in the journalism and creative media sequences must include news  stories completed for “Omaha News” TV broadcasts, as well as examples of the  student anchoring the news. Also included are web stories, scripts and radio  work.<span style=""></span></p>	f	<p><span style="line-height: 107%;">As part of the journalism/creative  media and public relations and advertising capstone courses (JMC 4460)</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students were assessed in the  public relations and advertising capstone&nbsp;  II in spring 2018 and 6 of&nbsp; __11___  students in the journalism/creative media capstone II.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent, 3-Good; 2-Adequate; 1-Poor	70	138	38	f	132	1	Y
171	2020-11-09	<p><span style="line-height: 107%;">The portfolios for all JMC majors must include an  academic paper written in a designated School of Communication  critical-thinking class during students’ junior or senior year at UNO.</span><br></p>	f	<p><span style="line-height: 107%;">As part of the journalism/creative  media and public relations and advertising capstone courses (JMC 4460)</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students enrolled in the public  relations and advertising section of JMC 4460 in Spring 2018 and 6 of 11  students in the journalism/creative media section of JMC 4460 were assessed.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	139	38	f	133	1	Y
172	2020-11-09	<p><span style="line-height: 107%;">The portfolios for all JMC majors must include an  academic paper written in a designated School of Communication  critical-thinking course during students’ junior or senior year.</span><br></p>	f	<p><span style="line-height: 107%;">As part of the journalism, creative  media and public relations and advertising capstone courses (JMC 4460)</span><br></p>	f	<p><span style="line-height: 107%;">Approximately 5 of 16 students enrolled in the public  relations and advertising section of JMC 4460 in Spring 2018 and 6 of 8  students in the journalism/creative media section of JMC 4460 were assessed.</span><br></p>		Students will score at the “Good” level or higher for each SLO. The rating scale for each SLO was 4-Excellent; 3-Good; 2-Adequate; 1-Poor	70	140	38	f	134	1	Y
173	2020-11-10	<p>This exam assesses students’ knowledge of music theory acquired during their five-semester theory sequence.<br></p>	t	<p>Fall semester of junior year<br></p>	t			The expectation is that individual students will score at or above 75%.	80	141	39	f	135	1	Y
174	2020-11-10	<p>Students will demonstrate research skills and synthesize their knowledge in music history through a formal&nbsp;<span style="">paper.</span></p>	t	<p>Spring semester of junior year<br></p>	t			The expectation is that individual students will score at or above 75%.	80	142	39	f	136	1	Y
175	2020-11-10	<p>Students will be able to synthesize their skills as a performer in a 40-50 minute senior recital that includes&nbsp;<span style="">representative works from a variety of genres.</span></p>	t	<p>Last semester in residency<br></p>	t			The expectation is that individual students will score at or above 75%.	80	143	39	f	137	1	S
176	2020-11-10	<p>Students demonstrate proficiency on the piano keyboard by performing, sight reading, reading open score, and&nbsp;<span style="">improvising as acquired during their five-semester theory sequence</span></p>	t	<p>During the junior year<br></p>	t			The expectation is that individual students will score at or above 75%, which is a passing score.	80	144	39	f	138	1	Y
177	2020-11-10	<p>Students will demonstrate knowledge of instruction and assessment through a strategies project presentation&nbsp;<span style="">that combines field work and pedagogy.</span></p>	t	<p>Last semester during clinical teaching<br></p>	t			The expectation is that individual students will score at or above 80%, which is a passing score.	80	145	39	f	139	1	S
178	2020-11-10	<p>This exam assesses students’ knowledge of music theory acquired during their five-semester theory sequence.<br></p>	t	<p>Fall semester of junior year<br></p>	t			The expectation is that individual students will score at or above 75%, which is a passing score.	80	146	40	f	140	1	Y
179	2020-11-10	<p>Students will demonstrate research skills and synthesize their knowledge in music history through a formal&nbsp;<span style="">paper.</span></p>	t	<p>Spring semester of junior year</p>	t			The expectation is that individual students will score at or above 75%, which is a passing score.	80	147	40	f	141	1	Y
180	2020-11-10	<p>Students will be able to synthesize their skills as a performer in a 40-50 minute senior recital that includes&nbsp;<span style="">representative works from a variety of genres.</span></p>	t	<p>Last semester in residency<br></p>	t			The expectation is that individual students will score at or above 75%, which is a passing score.	80	148	40	f	142	1	S
181	2020-11-10	<p>Students demonstrate proficiency on the piano keyboard by performing, sight reading, reading open score, and&nbsp;<span style="">improvising.</span></p>	t	<p>During the junior year<br></p>	t			The expectation is that individual students will score at or above 75%, which is a passing score.	80	149	40	f	143	1	Y
182	2020-11-10	<p>Proficiency in leading/ engaging community stakeholders in addressing urban issues or problems.<br></p>	t	<p>Assessment is part of UBNS 8200 (Community Development), a core class of the program.<br></p>	t		<p>UBNS 8200 (Community Development) is offered every two years and was not offered in 2017-2018 AY.<br></p>	90% of all students will receive a grade of 90% or better for UBNS 8200	90	150	41	f	144	1	O
192	2020-11-10	<p>3 Measures: 1) Ability to extend new or unique research questions to create new knowledge; 2) Clearly explain the issue/problem to be studied; and 3) Identify a focused and manageable topic that addresses rarely explored issue assessed by the attached rubric<br></p>	f	<p>In the classroom or during a defense<br></p>	f	<p>Approximately 30% of products created are reviewed by the Instructor/chair and Master Program Coordinator<br></p>		The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric.	90	155	43	f	152	1	Y
193	2020-11-10	<p>4 Measures: 1) Synthesizes existing knowledge, 2) Ability to make connections across disciplines or sub-fields of discipline 3) Critically evaluates information and sources, 4) Ability to adapt theory and skills to independent research assessed by the attached rubric<br></p>	f	<p>In the classroom or during a defense<br></p>	f	<p>Approximately 30% of products created are reviewed by the Instructor/chair and Master Program Coordinator<br></p>		The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric.	90	156	43	f	153	1	Y
194	2020-11-10	<p>4 Measures: 1) Ability to develop research design to answer research question, 2) Presents analysis of data in organized fashion; 3) States conclusions consistent with research findings, and 4) Discusses limitations and implications of the work assessed by the attached rubric<br></p>	f	<p>In the classroom or during a defense<br></p>	f	<p>Approximately 30% of products created are reviewed by the Instructor/chair and Master Program Coordinator<br></p>		The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric	90	157	43	f	154	1	Y
195	2020-11-10	<p>3 Measures: 1) Ability to write with purpose and give consideration to audience, 2) Adheres to conventional discipline format, and 3) Demonstrates competence in discipline-related syntax and mechanics assessed by the attached rubric<br></p>	f	<p>In the classroom or during a defense<br></p>	f	<p>Approximately 30% of products created are reviewed by the Instructor/chair and Master Program Coordinator<br></p>		The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric.	90	158	43	f	155	1	Y
196	2020-11-10	<p>2 Measures: 1) clearly and consistently follow an organizational pattern for a presentation, and 2) Delivery methods are consistent with discipline standards assessed by the attached rubric<br></p>	f	<p>As M. A. students defend their completed thesis<br></p>	t		<p>As M. A. students defend their completed thesis<br></p>	The expectation is that individual students will score at the “meet expectation” level or higher for each criterion on the capstone/thesis project rubric.	90	159	43	f	156	1	O
197	2020-11-10	<p style="">Dissertation Assessment<b> </b>Rubric 1 assesses the  dissertation across four aspects reflecting mastery of content in the  discipline including synthesis of existing knowledge, connection of knowledge  within the discipline and across disciplines, critical evaluation of sources  and the transfer of knowledge.</p>	t	<p><span style="line-height: 107%;">Wherever the Chair completes the rubric</span><br></p>	f	<p><span style="line-height: 107%;">Ph.D. program completers 2017 and 2018</span><br></p>	<p><span style="line-height: 107%;">Upon completion of dissertation</span><br></p>	An average score of 3 (good/very good—meets expectations) to 4 (excellent—exceeds expectations) on the assessment rubric (included within the report’s narrative)	100	160	44	f	157	1	O
198	2020-11-10	<p style="">The measure captures course evaluation scores across  4 items measuring responses to questions that reflect mastery of content in the  discipline. These items are (1) contrasts the implications of various theories,  (2) presents the background or origin of ideas/concepts developed, (3) presents  points of view other than his/her own when appropriate, and (4) adequately  discusses current developments in the field.</p>	t	<p><span style="line-height: 107%;">In the classroom</span><br></p>	f	<p><span style="line-height: 107%;">Ph.D. program completers 2017 and 2018 who taught  class at UNO</span><br></p>	<p><span style="line-height: 107%;">Teaching evaluation scores for classes taught by each  student graduating from the SCCJ Ph.D. program during 2017-2018.</span><br></p>	100% of students will receive average ratings above a 3.1 on a 5-point Likert scale (scores from 3.1 to 4 meet expectations and scores above 4.1 exceed expectations)	100	161	44	f	157	2	O
199	2020-11-10	<p style="">Dissertation Assessment Rubric 2  assesses the dissertation across four aspects reflecting competence in  conducting research including (1) development of research design to answer  empirical or theoretical questions, (2) analysis of data in organized fashion,  (3) connection between conclusions and research findings, (4) discussion of  limitations and implications of work.</p>	t	<p><span style="line-height: 107%;">Wherever the Chair completes the  rubric&nbsp;</span><br></p>	f	<p><span style="line-height: 107%;">Ph.D. program completers 2017 and 2018</span><br></p>	<p><span style="line-height: 107%;">Upon completion of dissertation</span><br></p>	An average score of 3 (good/very good—meets expectations) to 4 (excellent—exceeds expectations) on the assessment rubric (included within the report’s narrative)	100	162	44	f	158	1	O
202	2020-11-10	<p><span style="line-height: 107%;">Dissertation Assessment Rubric 3 assesses the  dissertation across four aspects reflecting written communication skills including  1) substantive content, (2) adherence to disciplinary conventions, (3) adequate  use of sources and evidence, and (4) competence in discipline-related syntax  and mechanics.</span><br></p>	t	<p><span style="line-height: 107%;">Wherever the Chair completes the rubric&nbsp;</span><br></p>	f	<p><span style="line-height: 107%;">Ph.D. program completers 2017 and 2018</span><br></p>	<p><span style="line-height: 107%;">Upon completion of dissertation</span><br></p>	An average score of 3 (good/very good—meets expectations) to 4 (excellent—exceeds expectations) on the assessment rubric (included within the report’s narrative)	100	165	44	f	161	1	O
231	2020-11-11	<p style="">Rubric indicator 3 aligns with SLO  3.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	175	48	f	183	2	S
253	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	50	f	196	2	S
254	2020-11-11	<p><span style="">Specific items aligned with each of the SLOS (CEC  Standards). See rubric for alignment.</span><br></p>	t	<p><span style="">This assessment occurs during the candidate’s final semester  in the program.</span><br></p>	t			4 out of 7 (2017-2018) and 6 out of 8 (2018-2019)	85	180	50	f	197	1	S
200	2020-11-10	<p><span style="line-height: 107%;">The measure captures  course evaluation scores across 4 items measuring student’s responses to  questions that reflect andragogical skill. Specific items address (1) student  learning and understanding, (2) agreement between stated objectives actual  teaching, (3) the extent to which exams and other graded materials reflect course  content as emphasized by the instructor, and (4) students perceptions of the instructor  relative to other instructors at UNO.</span><br></p>	t	<p><span style="line-height: 107%;">In the classroom</span><br></p>	f	<p><span style="line-height: 107%;">Ph.D. program completers 2017 and 2018 who taught  class at UNO</span><br></p>	<p><span style="line-height: 107%;">Teaching evaluation scores for classes taught by each  student graduating from the SCCJ Ph.D. program during 2017-2018.</span><br></p>	Overall evaluation scores above a 3.1 on a 5-point Likert scale (scores from 3.1 to 4 meet expectations and scores above 4.1 exceed expectations)	100	163	44	f	159	1	O
201	2020-11-10	<p><span style="line-height: 107%;">The measure captures  course evaluation scores across 4 items measuring student’s responses to  questions that reflect oral communication and oral presentation skills.  Specific items address student agreement with the following (1) explanations  are clear, (2) materials are well prepared and carefully explained, (3)  presentation style holds listener’s interest, and (4) presentation style is  dynamic and energetic<b>&nbsp;</b></span><br></p>	t	<p><span style="line-height: 107%;">In the classroom</span><br></p>	f	<p><span style="line-height: 107%;">Ph.D. program completers 2017 and 2018 who taught  class at UNO</span><br></p>	<p><span style="line-height: 107%;">Teaching evaluation scores classes taught by each  student graduating from the SCCJ Ph.D. program during 2017-2018.</span><br></p>	Overall evaluation scores above a 3.1 on a 5-point Likert scale (scores from 3.1 to 4 meet expectations and scores above 4.1 exceed expectations)	100	164	44	f	160	1	O
203	2020-11-11	<p><b><span style="line-height: 107%;">Each  of these measures demonstrates not only that the students has mastered content  but is able to translate the content and actively speak within the discipline  to others</span></b><br></p>	t	<p><span style="line-height: 107%;">&nbsp;Defense</span><br></p>	t		<p><span style="line-height: 107%;">At defense for each student</span><br></p>	As this is a graduate program, 100% should be rated either “competent” or “excellent”	90	166	45	f	162	1	O
204	2020-11-11	<p><span style="line-height: 107%;"><span style=""><b>The  final thesis/project is the </b></span><span style=""><b>culminating</b></span><span style=""><b>&nbsp;experience for the student,  representing her/his/their ability to utilize both the theory and practices of  the discipline to create unique contributions for the discipline and others</b></span></span><br></p>	t	<p><span style="line-height: 107%;">Preparation for Defense</span><br></p>	t		<p><span style="line-height: 107%;">As  students complete their thesis/project</span><br></p>	As this is a graduate program, 100% should be rated either “competent” or “excellent”	90	167	45	f	163	1	O
205	2020-11-11	<p style=""><b><i><span style="font-weight: normal; line-height: normal;">&nbsp; &nbsp;</span></i></b><b>Both the Thesis/Project  Manuscript and the Thesis/Project Defense Process demonstrate the abilities of  the student to translate gained knowledge and insight into applicable design  and discussion</b><b></b></p>	t	<p><span style="line-height: 107%;">Thesis/project Defense</span><br></p>	t		<p><span style="line-height: 107%;">During Final Thesis/project Defense</span><br></p>	As this is a graduate program, 100% should be rated either “competent” or “excellent”	90	168	45	f	164	1	O
206	2020-11-11	<p><b><span style="line-height: 107%;">By  conducting the research required to complete the thesis/project, the student  must adhere to the discipline’s guiding ethics and standards, ensuring  protection of subjects and/or respect for the phenomenon being explored</span></b><br></p>	t	<p><span style="line-height: 107%;">End of Term</span><br></p>	t		<p><span style="line-height: 107%;">End of Term</span><br></p>	As this is a graduate program, 100% should be rated either “competent” or “excellent”	90	169	45	f	165	1	O
207	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 5 aligns with SLO 1.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	80	170	46	f	166	1	S
208	2020-11-11	<p style="">Rubric indicators 1 and 2 align  with SLO 1.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	f	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	80	171	46	f	166	2	S
209	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 1 aligns with SLO 2.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO	80	172	46	f	167	1	S
211	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 4 aligns with SLO 3.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	80	174	46	f	168	1	S
232	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 2 aligns with SLO 4.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	176	48	f	184	1	S
233	2020-11-11	<p style="">Rubric indicators 4 and 5 align  with SLO 4.</p><p>    <span style="line-height: 107%;">See attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	177	48	f	184	2	S
234	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 3 aligns with SLO 5.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	178	48	f	185	1	S
235	2020-11-11	<p style="">Rubric indicator 6 aligns with SLO  5.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	179	48	f	185	2	S
210	2020-11-11	<p><span style="line-height: 107%;">Praxis II exams are  content specific and each content area has unique cut scores. Data provided for  SLO 2 are scores from the 5301 Reading Specialist Praxis II Exam. Subscale on  this exam include:&nbsp; 1) Assessment and  Diagnostic Teaching, 2) Reading and Writing Development, 3) Leadership Skills  and Specialized Knowledge of Pedagogical Principles and instructional  Practices, 4) Professional Learning and Leadership, and 5) Analysis of  Individual student Case Study. The Praxis II tests were first administered in 2013-2014  and became consequential in Nebraska in 2015. The Educational Testing Service  provides candidate score reports to the TED periodically throughout the year.</span><br></p>	f	<p><span style="line-height: 107%;">In testing centers approved by the  Educational Testing Service.</span><br></p>	f	<p><span style="line-height: 107%;">A majority of literacy majors take the Praxis II exam  in order to meet the requirements for licensure as a reading teacher through  from the Nebraska Department of Education.&nbsp;  Occasionally, a student may opt not to take the exam if they do not wish  to pursue licensure through the Nebraska Department of Education.&nbsp;</span><br></p>	<p><span style="line-height: 107%;">The exam is administered by the Educational Testing  Service which offers testing dates throughout the year.&nbsp; Students typically take the exam in the final  year of their program.</span><br></p>	Students will meet or exceed the cut score as established by the Nebraska Department of Education.	80	173	46	f	167	2	O
212	2020-11-11	<p style="">Rubric indicator 3 aligns with SLO  3.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	80	175	46	f	168	2	S
213	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 2 aligns with SLO 4.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	80	176	46	f	169	1	S
214	2020-11-11	<p style="">Rubric indicators 4 and 5 align  with SLO 4.</p><p>    <span style="line-height: 107%;">See attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	80	177	46	f	169	2	S
215	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 3 aligns with SLO 5.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	80	178	46	f	170	1	S
216	2020-11-11	<p style="">Rubric indicator 6 aligns with SLO  5.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	80	179	46	f	170	2	S
256	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	50	f	198	1	S
257	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	50	f	199	1	S
217	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 5 aligns with SLO 1.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	170	47	t	176	1	S
218	2020-11-11	<p style="">Rubric indicators 1 and 2 align  with SLO 1.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	f	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	171	47	t	176	2	S
219	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 1 aligns with SLO 2.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO	90	172	47	t	177	1	S
246	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	49	f	192	1	S
255	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	50	f	197	2	S
258	2020-11-11	<p><span style="line-height: 107%;">For the comprehensive  exam, students need to originate, integrate, and combine content area knowledge  into a product or proposal that is new to him or her, thus demonstrating their  mastery of discipline content.&nbsp;</span><br></p>	f	<p><span style="line-height: 107%;">Near the end of the students’  coursework</span><br></p>	t			No more than one dissenting vote from supervisory committee	100	182	51	f	200	1	Y
222	2020-11-11	<p style="">Rubric indicator 3 aligns with SLO  3.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	175	47	t	178	2	S
236	2020-11-11	<p><span style="">Specific items aligned with each of the SLOS (CEC  Standards). See rubric for alignment.</span><br></p>	t	<p><span style="">This assessment occurs during the candidate’s final semester  in the program.</span><br></p>	t			4 out of 7 (2017-2018) and 6 out of 8 (2018-2019)	85	180	49	f	186	1	S
237	2020-11-11	<p><span style="">Specific items aligned with each of the SLOS (CEC  Standards). See rubric for alignment.</span><br></p>	t	<p><span style="">This assessment occurs during the candidate’s final semester  in the program.</span><br></p>	t			4 out of 7 (2017-2018) and 6 out of 8 (2018-2019)	85	180	49	f	188	1	S
223	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 2 aligns with SLO 4.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	176	47	t	179	1	S
226	2020-11-11	<p style="">Rubric indicator 6 aligns with SLO  5.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	179	47	t	180	2	S
221	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 4 aligns with SLO 3.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	174	47	t	178	1	S
224	2020-11-11	<p style="">Rubric indicators 4 and 5 align  with SLO 4.</p><p>    <span style="line-height: 107%;">See attached rubric</span><br></p>	t	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	177	47	t	179	2	S
225	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 3 aligns with SLO 5.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	178	47	t	180	1	S
227	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 5 aligns with SLO 1.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	170	48	f	181	1	S
228	2020-11-11	<p style="">Rubric indicators 1 and 2 align  with SLO 1.</p><p>    <span style="line-height: 107%;">&nbsp;&nbsp;&nbsp; See  attached rubric</span><br></p>	f	<p><span style="line-height: 107%;">TED 9190:&nbsp; Literacy Graduate Capstone</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	171	48	f	181	2	S
229	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 1 aligns with SLO 2.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO	90	172	48	f	182	1	S
230	2020-11-11	<p style="">Please see Section V for a full  description and explanation of this assessment. </p><p>    <span style="line-height: 107%;">See attached rubric -&nbsp; Rubric indicator 4 aligns with SLO 3.&nbsp; &nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">At the midpoint of the program</span><br></p>	t			Students achieve Target on all rubric indicators relevant to the SLO.	90	174	48	f	183	1	S
239	2020-11-11	<p><span style="">Specific items aligned with each of the SLOS (CEC  Standards). See rubric for alignment.</span><br></p>	t	<p><span style="">This assessment occurs during the candidate’s final semester  in the program.</span><br></p>	t			4 out of 7 (2017-2018) and 6 out of 8 (2018-2019)	85	180	49	f	190	1	S
240	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	49	f	186	2	S
241	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	49	f	187	1	S
242	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	49	f	188	2	S
243	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	49	f	189	2	S
244	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	49	f	190	2	S
245	2020-11-11	<p><span style="">Specific assessment items are aligned with the SLOs</span><br></p>	t	<p><span style="">This assessment occurs during the internship semester.</span><br></p>	f	<p><span style="">Students  in the program completing internship are assessed with this instrument.&nbsp;</span><br></p>		3.0	90	181	49	f	191	1	S
259	2020-11-11	<p><span style="line-height: 107%;">Either through a  manuscript or an oral presentation, students will have to be able to  effectively explain their research and communicate this to others (verbal or  written).&nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">Prior to graduation students submit a  CV, which has been reviewed by their faculty mentor to the Doctoral Program  Committee.&nbsp;</span><br></p>	t			Documentation of first-author manuscript or oral presentation at a national conference	100	183	51	t	201	1	Y
260	2020-11-11	<p><span style="line-height: 107%;">For their dissertation,  students must develop and execute an original research idea. The supervisory  committee than evaluates the success of this at his or her defense.</span><br></p>	t	<p><span style="line-height: 107%;">Scheduled by student and the  committee</span><br></p>	t			No more than one dissenting vote from supervisory committee	100	184	51	f	202	1	Y
261	2020-11-11	<p style="">CITI training covers the ethics  and standards needed to conduct research.<b></b></p>	t	<p><span style="line-height: 107%;">This occurs in the first semester.&nbsp;</span><br></p>	t			Completion of CITI training as evidenced by the certificate.	100	185	51	f	203	1	Y
262	2020-11-11	<p style="">The comprehensive exam for MA students includes  discipline specific questions that the student must answer.&nbsp; The thesis for the MS students incorporates  discipline specific content as part of their thesis topic.</p>	t	<p><span style="line-height: 107%;">End of program specific assessment</span><br></p>	t			The expectation is that students will pass the comprehensive exam or their thesis defense.	90	186	52	f	204	1	S
263	2020-11-11	<p style="">The comprehensive exam for MA  students includes the need to analyze, evaluate, and synthesize  information.&nbsp; The thesis for the MS  students includes the need to analyze, evaluate, and synthesize information.&nbsp;&nbsp;<b></b></p>	t	<p><span style="line-height: 107%;">End of program specific assessment</span><br></p>	t			The expectation is that students will pass the comprehensive exam or their thesis defense.	90	186	52	t	205	1	S
264	2020-11-11	<p style="">The comprehensive exam for MA  students and the thesis for the MS students is a written work.&nbsp; In addition all MS students give an oral  defense of their thesis and MA students may be asked for verbal clarification  of their work as needed.<b></b></p>	t	<p><span style="line-height: 107%;">End of program specific assessment</span><br></p>	t			The expectation is that students will pass the comprehensive exam or their thesis defense.	90	186	52	t	206	1	S
265	2020-11-11	<p style="">The Collaborative Institutional  training initiative is an online course required for human subjects research  that covers specifically covers aspects or ethics and standards related to the  specific field</p>	t	<p><span style="line-height: 107%;">As Part of HPER 8030</span><br></p>	t			The expectation is that all students will receive CITI certification.	90	187	52	f	207	1	Y
267	2020-11-11	<p><span style="line-height: 107%;">The comprehensive examination has been modeled after  the BOC examination. In order for students to become licensed health care  practitioners and qualified for employment as an athletic trainer they must  pass the BOC examination.</span><br></p>	t	<p><span style="line-height: 107%;">Classroom setting</span><br></p>	t			>70% First-time pass-rate.	90	189	53	f	208	2	Y
266	2020-11-11	<p><span style="line-height: 107%;">In order for students to become licensed health care  practitioners and qualified for employment as an athletic trainer they must  pass the BOC examination.&nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">Outside testing site organized by the BOC.&nbsp;</span><br></p>	t		<p><span style="line-height: 107%;">While,  we encourage students to take it in their final semester, students may choose  to take this after graduation.</span><br></p>	>70% First-time pass-rate.	90	188	53	t	208	1	O
268	2020-11-11	<p><span style="line-height: 107%;">The foundational behaviors ask preceptors to assess  students based on the primacy of the patient, advancing knowledge, team  approach to practice, legal &amp; clinical practice, cultural competence and  professionalism. These behaviors are fundamental for students working in  diverse healthcare environments.&nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">Online as part of their preceptors evaluation.&nbsp;</span><br></p>	t			>80% of students average "3" ("Average") or higher on the 7 Foundational Behavior sections	90	190	53	f	209	1	S
269	2020-11-11	<p><span style="line-height: 107%;">Preceptors evaluate students based on their clinical  skills in these evaluations.&nbsp; These  include the application and administration of various fundamental skills.&nbsp;</span><br></p>	t	<p><span style="line-height: 107%;">Online as part of their preceptors evaluation.</span><br></p>	t			>80% of averaged Clinical Site and Preceptor evaluation scores will be 4.0 (agree) or higher at end of each semester	90	191	53	f	209	2	S
272	2020-12-03	<p>This project is designed to test the students ability to evaluate a patient, design a progressive treatment program that addresses the healing stage, goals, and re-evaluate findings of their patient, as well as&nbsp;<span style="">research, implement, and evaluate the most effective techniques for their specific patient.&nbsp;</span></p><br>	f	<p><span style="line-height: 107%;">PE 8346</span><br></p>	t			80% of students score 80% or higher on final rehabilitation project.	90	194	53	t	304	1	Y
271	2020-12-03	<p><span style="line-height: 107%;">The oral practical examinations assess the ability  of a student to perform a variety of clinical skills, in a classroom setting,  prior to application to a real-life patient.&nbsp;  These skills evaluate the students ability to critically think and  perform a specific, required set of skills.&nbsp;</span><br></p>	f	<p><i><span style="line-height: 107%;">PE  8310, 8316, 8326, 8346</span></i><br></p>	t		<p><span style="line-height: 107%;">At  the end of the semester they are completed.</span><br></p>	>80% of students score 80% or higher on practical exams in PE 8316, PE 8326, and PE 8346	90	193	53	t	304	2	O
270	2020-12-03	<p><span style="line-height: 107%;">The evidence based medicine projects assess the  students ability to synthesize and evaluate literature for clinical  application.&nbsp;</span><br></p>	f	<p><span style="line-height: 107%;">PE8966</span><br></p>	t			EBM projects: >80% of students score 80% or higher	90	192	53	t	304	3	Y
275	2020-11-11	<p>Each of the measures uses a common rubric to assess one or more of the SLO indicators (rubric rows)&nbsp;<span style="">associated with SLO 1.&nbsp; See attached rubric.&nbsp;</span></p><br>	t	<p>COUN 8010, COUN 8220, COUN 8650, COUN 8460,<span style="">&nbsp;COUN 8740</span></p><br>	t			Students will be assessed as having “Met” or “Exceeded” the expectations outlined in the rubric indicators (rows).	75	197	54	f	212	1	S
276	2020-11-11	<p>Each of the measures uses a common rubric to assess one or more of the SLO indicators (rubric rows)&nbsp;<span style="">associated with SLO 2.&nbsp; See attached rubric.&nbsp;</span></p><br>	t	<p>COUN 8010, COUN 8110, COUN 8430, COUN 8460<br></p>	t			Students will be assessed as having “Met” or “Exceeded” the expectations outlined in the rubric indicators (rows).	75	198	54	f	213	1	S
278	2020-11-11	<p>Each of the measures uses a common rubric to assess one or more of the SLO indicators (rubric rows)&nbsp;<span style="">associated with SLO 3.&nbsp; See attached rubric.&nbsp;</span></p><br>	t	<p><span style="line-height: 107%;">COUN  8010, COUN 8110, COUN 8920</span><br></p>	t			Students will be assessed as having “Met” or “Exceeded” the expectations outlined in the rubric indicators (rows).	75	199	54	f	214	1	S
279	2020-11-11	<p>Each of the measures uses a common rubric to assess one or more of the SLO indicators (rubric rows)&nbsp;<span style="">associated with SLO 4.&nbsp; See attached rubric.&nbsp;</span></p><br>	t	<p><span style="line-height: 107%;">COUN  8226, COUN 8230</span><br></p>	t			Students will be assessed as having “Met” or “Exceeded” the expectations outlined in the rubric indicators (rows).	75	200	54	f	215	1	S
280	2020-11-11	<p>Each of the measures uses a common rubric to assess one or more of the SLO indicators (rubric rows)<span style="">&nbsp;associated with SLO 5.&nbsp; See attached rubric.&nbsp;</span></p><br>	t	<p><span style="line-height: 107%;">COUN  8010, COUN 8030, COUN 8110, COUN, 8920</span><br></p>	t			Students will be assessed as having “Met” or “Exceeded” the expectations outlined in the rubric indicators (rows).	75	201	54	f	216	1	S
281	2020-11-11	<p>Each of the measures uses a common rubric to assess one or more of the SLO indicators (rubric rows)&nbsp;<span style="">associated with SLO 6.&nbsp; See attached rubric.&nbsp;</span></p><br>	t	<p><span style="line-height: 107%;">COUN  8360, COUN 8460, COUN 8740</span><br></p>	t			Students will be assessed as having “Met” or “Exceeded” the expectations outlined in the rubric indicators (rows).	75	202	54	f	217	1	S
282	2020-11-11	<p>Each of the measures uses a common rubric to assess one or more of the SLO indicators (rubric rows)<span style="">&nbsp;associated with SLO 7.&nbsp; See attached rubric.&nbsp;</span></p><br>	t	<p><span style="line-height: 107%;">COUN  8230, COUN 8430&nbsp;</span><br></p>	t			Students will be assessed as having “Met” or “Exceeded” the expectations outlined in the rubric indicators (rows).	75	203	54	f	218	1	S
283	2020-11-11	<p style="">Each of the measures uses a common rubric to assess one  or more of the SLO indicators (rubric rows)<span style="">&nbsp;associated with SLO 8.&nbsp; See  attached rubric.&nbsp;</span></p><p style=""></p>	t	<p>COUN 8010, COUN 8226, COUN 8650, COUN 8749,&nbsp;<span style="">COUN 8920</span></p><br>	t			Students will be assessed as having “Met” or “Exceeded” the expectations outlined in the rubric indicators (rows).	75	204	54	f	219	1	S
285	2020-12-03	<p>The preproposal is an independent paper submitted for our doctoral comprehensive exams. The paper is the opportunity to vet their dissertation idea and formalize the essential elements that must be aligned prior to engaging in proposal writing. The preproposal is a synthesis of their research ideas in preparation for candidacy. To complete the elements of a preproposal, students must align their topic of interest with context, research framework, overarching and sub questions, measurement, and data analysis plan.</p>	t	<p>N/A</p>	t		<p>N/A</p>	In the attachment titled "EDL Pre-Proposal Rubric Development: Iteration 1" you will see an explanation of the proficiency threshold for each domain. The rubric is currently being validated.	100	206	56	t	291	1	O
312	2020-11-11	<p><span style="line-height: 115%;">The MTCH course projects requires both a written  document and a oral presentation.&nbsp; As  such, a student is required to demonstrate effective oral and written  communication.</span><br></p>	t	<p><span style="line-height: 115%;">Students must present an original  project in one of the MTCH courses during the last year of their program&nbsp;</span><br></p>	t			Currently graded as Pass/Fail., 70% pass	95	220	60	t	246	1	Y
327	2020-11-11	<p style=""><b>The  comprehensive examination presentation is an oral case presentation to ABA  faculty committee on a selected case from the student’s practicum experience in  the past year. The student must be able to effectively, accurately, and  concisely convey understanding of basic behavioral concepts and principles as  applicable to the case being presented (see attached)</b></p>	t	<p><span style="line-height: 107%;">at UNO or MMI</span><br></p>	t		<p style="line-height: normal;">During final semester of program</p>	Student must receive pass grade from faculty committee	100	236	61	f	257	3	O
274	2020-12-03	<p><span style="line-height: 107%;">It is expected that students are engaged members of  not only the profession but the community.&nbsp;  This measure takes into account volunteerism and community service.</span><br></p>	f	<p>N/A</p>	t		<p><span style="line-height: 107%;">Regularly  as students participate in events.</span><br></p>	>75% of students will participate in at least one community outreach event.	90	196	53	t	305	1	O
273	2020-12-03	<p><span style="line-height: 107%;">Students are assessed in their participation in  state, regional and national organizations as well as events such as speakers,  conferences and quiz bowl.&nbsp;</span><br></p>	f	<p><span style="line-height: 107%;">Yearly</span><br></p>	t		<p><span style="line-height: 107%;">Regularly  as students participate in events.&nbsp;</span><br></p>	MATS membership: >80% of AT Students join MATS; NATA membership: 100% of AT students join NATA; Student involvement in state or regional leadership opportunities (DVSLC, NSATA SLC, Quiz Bowl teams): Have at least one student recognized in a leadership position or participate in quiz bowl annually; Attendance at MAATA: >25% of AT Students attend MAATA Conference annually	90	195	53	t	305	2	O
286	2020-12-03	<p>The attachment titled "EDL 9550 Symposium on School Leadership Research Brief Components" describes the assignment. The assignment is formal, academic writing in which the students must demonstrate a command of the information and implications for our area school districts. The topics are robust and require quality, concise writing to communication the idea to a broader audience. Additionally, students present their work to peers in class as a formal presentation.</p>	t	<p>Students may take EDL 9550 at any point in their coursework. Many choose to take it half-way through their plan of study.</p>	f	<p>Some students have program-specific requirements such as our Next Wave Librarian students. Most students take Symposium.</p>		In the current form, our goal is to have students earn the points equivalent to an A.	100	207	56	t	298	1	Y
292	2020-11-11	<p><span style="color: rgb(33, 37, 41);">Students must pass the Principle Praxis test for Nebraska to earn a Nebraska Principle Certificate. This test is registered for and taken outside of UNO classes and reflects the PSEL standards of content throughout the test. The test is a combination of multiple choice and analysis of short answer.</span><br></p>	t	<p><i style="color: rgb(33, 37, 41);">At the very end of the completed coursework. Students sign up on their own for the assessment and results are reported to our department.</i><br></p>	t			A qualifying score of 145 is set by the Nebraska Department of Education	100	209	55	f	228	1	S
293	2020-11-11	<p>The entire focus of the project is to analyze demographic and test data as it relates to curriculum and/or improvement in their district and create an action plan for improvement.</p>	t	<p>The assignment is part of EDL 8490 Instructional Leadership. Many students take this class midway through their plan of study.</p>	t			The goal is to have all students meet or exceed expectations (3 or 4 on rubric) for total points value resulting in an A.	100	210	55	f	229	1	Y
294	2020-11-11	<p>Students communicate their analysis in a written report and oral presentation to peers (and, if available their district leaders). The written report includes visualization of data for ease of communication.</p>	t	<p>The assignment is part of EDL 8490 Instructional Leadership. Many students take this class midway through their plan of study.</p>	t			The goal is to have all students meet or exceed expectations (3 or 4 on rubric) for total points value resulting in an A.	100	211	55	f	230	1	Y
344	2020-11-11	<p><span style="">Presentation submissions (1) peer-reviewed by experts  and (2) accepted into a conference will demonstrate research skills.</span><br></p>	f	<p>N/A</p>	t		<p style="line-height: normal;"><span style="">Based  on conference submission deadlines</span></p>	Submissions accepted for, and presented at, a national, international, or regional conference, as author or co-author.	80	241	64	f	267	1	O
295	2020-11-11	<p>The internship is taught by an EDL faculty who was recently an Associate Superintendent in a large, urban school district. She collaborates with the site supervisors in the field to approve meaningful and challenging internship experiences for each individual graduate student. Within each approved experience is a combination of content knowledge, collaboration, and demonstration of professional and ethics.</p>	f	<p>EDL 8400 is the Elementary Internship and EDL 8410 is the Secondary Internship.</p>	t			The target is that 100% of students core at least "acceptable" on the rubric in all domains.	100	212	55	f	231	1	Y
296	2020-11-11	<p>Committee members developed a rubric for Genre and Culture (see attached), members and readers then had a norming session before reading and scoring artifacts from 1-4, with each artifact being read by two readers (three if the first two scores differ by more than one).<br></p>	f	<p>All MA Students complete the comprehensive exam in their final year.<br></p>	t		<p>To date, we have collected and measured data for this SLO once.<br></p>	Average scores of 3.0 or higher on the rubric are considered proficient	80	213	8	f	232	1	O
297	2020-11-11	<p>Committee members developed a rubric for Critical Approaches (see attached), held a norming session, and then read and scored artifacts from 1-4, with each artifact being read by two readers (three if the first two scores differ by more than one).<br></p>	t	<p>These were final projects from courses, so they are not from a specific moment in the program.<br></p>	t		<p>To date, we have collected and measured data for this SLO once.<br></p>	Average scores of 3.0 or higher on the rubric are considered proficient	80	214	8	f	233	1	O
298	2020-11-11	<p>Committee members developed a rubric for Communication Skills (see attached), held a norming session, and then read and scored artifacts from 1-4, with each artifact being read by two readers (three if the first two scores differ by more than one).<br></p>	t	<p>These were final projects from courses, so they are not from a specific moment in the program.<br></p>	t		<p>To date, we have collected and measured data for this SLO once.<br></p>	Average scores of 3.0 or higher on the rubric are considered proficient	80	215	8	f	234	1	O
299	2020-11-11	<p>Committee members developed a rubric for Purposeful Reading (see attached) ; members and readers will then have a norming session before reading and scoring artifacts from 1-4, with each artifact being read by two readers (three if the first two scores differ by more than one).<br></p>	t	<p>Artifacts for assessment of this SLO come from graduate seminars, so they are not from a specific moment in the program.<br></p>	t		<p>To date, we have collected and measured data for this SLO once.<br></p>	Average scores of 3.0 or higher on the rubric are considered proficient	80	216	8	f	235	1	O
300	2020-11-11	<p style="">In producing a thesis, the student must demonstrate  extensive knowledge of the subject material.&nbsp;&nbsp;<b></b></p>	t	<p>N/A</p>	t			Currently graded as Pass/Fail.	95	217	58	f	236	1	S
301	2020-11-11	<p style="">In producing a  thesis, the student must demonstrate the ability to analyze, synthesize, and  evaluate information.&nbsp;&nbsp;<b></b></p>	t	<p>N/A</p>	t			Currently graded as Pass/Fail.	95	217	58	t	237	1	S
302	2020-11-11	<p style=""><span style="">Since producing  a thesis requires both a written document and an oral defense, a student is  required to demonstrate effective oral and written communication.</span>&nbsp;&nbsp;<b></b></p>	t	<p>N/A</p>	t			Currently graded as Pass/Fail.	95	217	58	t	238	1	S
303	2020-11-11	<p style="">In completing a project, the student must  demonstrate extensive knowledge of the subject material.&nbsp;&nbsp;<b></b></p>	t	<p>N/A</p>	f	<p><span style="line-height: 107%;">Students  can choose either the project option or the comprehensive exam option.&nbsp;</span><br></p>		Currently graded as Pass/Fail.	95	218	59	f	240	1	S
304	2020-11-11	<p><span style="line-height: 107%;">In taking and passing a comprehensive exam, a  student must<b> </b>demonstrate extensive knowledge of the subject  material.&nbsp;&nbsp;</span><br></p>	t	<p>N/A</p>	f	<p style="line-height: normal;"><span style="">Students can choose either the project  option or the comprehensive exam option.&nbsp;</span></p>		70%	95	219	59	f	240	2	S
305	2020-11-11	<span style="line-height: 107%;">In completing a project, the student must  demonstrate the ability to analyze, synthesize, and evaluate information.&nbsp;&nbsp;</span><br>	t	<p>N/A</p>	f	<p><span style="line-height: 107%;">Students  can choose either the project option or the comprehensive exam option.&nbsp;</span><br></p>		Currently graded as Pass/Fail.	95	218	59	t	241	1	S
306	2020-11-11	<p><span style="line-height: 107%;">In taking a passing a comprehensive exam, the  student must demonstrate the ability to analyze, synthesize, and evaluate  information.&nbsp;&nbsp;</span><br></p>	t	<p>N/A</p>	f	<p style="line-height: normal;"><span style="">Students can choose either the project  option or the comprehensive exam option.&nbsp;</span></p>		70%	95	219	59	t	241	2	S
307	2020-11-11	<span style="line-height: 107%;">Since completing a project requires both a written  document and a oral defense, and the pass/fail grade is assigned primarily on  the basis of the report and defense, a student is required to demonstrate  effective oral and written communication in order to obtain a Pass.</span><br>	t	<p>N/A</p>	f	<p><span style="line-height: 107%;">Students  can choose either the project option or the comprehensive exam option.&nbsp;</span><br></p>		Currently graded as Pass/Fail.	95	218	59	t	242	1	S
308	2020-11-11	<p><span style="line-height: 115%;">In completing a project, the student must  demonstrate extensive knowledge of the subject material.&nbsp;&nbsp;</span><br></p>	t	<p><span style="line-height: 115%;">Students must present an original  project in one of the MTCH courses during the last year of their program&nbsp;</span><br></p>	t			Currently graded as Pass/Fail., 70% pass	95	220	60	f	244	1	Y
309	2020-11-11	<p><span style="line-height: 115%;">In taking a passing a comprehensive exam, a student  must<b> </b>demonstrate extensive knowledge of the subject material.&nbsp;&nbsp;</span><br></p>	t	<p>N/A</p>	t			70%	95	221	60	f	244	2	S
310	2020-11-11	<p><span style="line-height: 115%;">In completing a project, the student must  demonstrate the ability to analyze, synthesize, and evaluate information.&nbsp;&nbsp;</span><br></p>	t	<p><span style="line-height: 115%;">Students must present an original  project in one of the MTCH courses during the last year of their program&nbsp;</span><br></p>	t			Currently graded as Pass/Fail., 70% pass	95	220	60	t	245	1	Y
311	2020-11-11	<p><span style="line-height: 115%;">In taking a passing a comprehensive exam, the  student must demonstrate the ability to analyze, synthesize, and evaluate  information.&nbsp;&nbsp;</span><br></p>	t	<p>N/A</p>	t			70%	95	221	60	t	245	2	S
321	2020-11-11	<p><b><span style="line-height: 107%;">The  elements of the rubric assess the design and conduct of the project, the  writing of the project and its oral presentation.&nbsp;&nbsp;</span></b><br></p>	f	<p><span style="line-height: 107%;">Thesis defense</span><br></p>	t		<p>Typically in 2nd or 3rd year<br></p>	Majority of raters rank the student proficient in all sub elements of the rubric	100	230	62	f	253	1	O
313	2020-11-11	<p style="">The Comprehensive Exams (Comps) assess target  language and language proficiency, both orally and in writing, according to  ACTFL Proficiency Scale<b>. </b>Our program includes 4 language tracks  (Spanish, French, German, and TESOL); a student in any of those tracks might or  might not be a native speaker of that particular language. The Comps consist of  3 sections; one of them is completed in the student’s specific language of  concentration; the other 2 sections are completed in English. The Comps consist of three essay questions pertaining to each of  the three study areas the Program is articulated into (language; second  language acquisition theory &amp; pedagogy, and research &amp; pedagogy).  Students must approve all 3 sections to earn a grade of pass; they may re-take  one or more sections of the Comps if not approved.</p>	t	<p><span style="line-height: 107%;">The Comps are completed as a Take-home exam. They are  administered by three faculty members who agree to serve on any individual  student’s committee. They take place in the first week of March in the spring  and the first week of November in the fall. The Take-home portion is followed  by an Oral Defense, scheduled 7-10 days after the written exam.</span><br></p>	t		<p><span style="line-height: 107%;">Data  is collected each time Comps are administered (usually once a semester)</span><br></p>	Advanced Mid to High or higher (Superior) in the ACTFL Scale	90	222	67	f	248	1	O
315	2020-11-11	<p style="">Students  will demonstrate an understanding of Second Language Acquisition and Pedagogy Theories.<b></b></p>	t	<p><span style="line-height: 107%;">The Comps are completed as a Take-home exam. They are  administered by three faculty members who agree to serve on any individual  student’s committee. They take place in the first week of March in the spring  and the first week of November in the fall. The Take-home portion is followed  by an Oral Defense, scheduled 7-10 days after the written exam.</span><br></p>	t		<p style="line-height: normal;">Data  is collected each time Comps are administered (usually once a semester)</p>	80% is a passing grade.	90	224	67	f	249	1	O
317	2020-11-11	<p><span style="line-height: 107%;">Students </span><span style="line-height: 107%;">will apply their knowledge of theories, experiences,  and skills in second language teaching to develop a classroom- based research  project. They will demonstrate an ability to articulate an outline, summary, or  overview of such a project, highlight the theories the project is based upon,  and analyze (preliminary) results.</span><br></p>	t	<p><span style="line-height: 107%;">Where does the assessment occur: </span><span style="line-height: 107%;">The Comps are completed as a  take-home exam. They are administered by three faculty members who agree to  serve on any individual student’s committee. They take place in the first week  of March in the spring and the first week of November in the fall.</span><br></p>	t		<p><span style="line-height: 107%;">Data  is collected each time Comps are administered (usually once a semester).</span><br></p>	80% is a passing grade	90	226	67	f	250	1	O
318	2020-11-11	<p>Students will apply their knowledge of theories, experiences, and skills in second language teaching to develop a classroom-based research project. They will use effective presentation skills during a formal poster presentation to outline, formulate, or assess their project.</p><p>See description of the measure below:</p><p>Students will choose appropriate research tools to design and carry out an action research project. They will prepare a poster to present their project, highlight the theories the project is based upon, and analyze (preliminary) results. The presentation will be part of a specific MALT Student Panel at the Annual MALT Colloquium.</p><br>	t	<p><span style="line-height: 107%;">After student has completed first 9 credit hours and taken a  Second Language Acquisition Theory, and/or Pegagogy, and/or Research class</span><br></p>	t			80% is passing grade.	90	227	67	f	250	2	Y
314	2020-11-11	<p style=""><b><span style="font-weight: normal; line-height: normal;">&nbsp; &nbsp;&nbsp;</span></b>The  Portfolio (language section) assesses target-language proficiency in writing,  according to ACTFL Proficiency Scale. See description of measure as a whole  below:<b></b></p><p>    </p><p style="">The Portfolio will include an (a) introduction, (b) a  selection of three papers or projects completed by the student for each ot the  3 areas of study (language, SLA theory and pedagogy, research and pedagogy),  and (c) a conclusion.</p>	f	<p><span style="line-height: 107%;">The Portfolio is presented to the MALT Portfolio Committee in  the student’s second to last semester in the Program. Three Faculty members  agree to serve on the MALT Portfolio Committee on a yearly basis.</span><br></p>	t		<p><span style="line-height: 107%;">Data  is collected each time a Portfolio is presented and assessed (usually once a  semester). Assessment will take place mid-April in the spring and mid-November  in the fall.</span><br></p>	Advanced Mid or higher (Advanced High to Superior) in the ACTFL Scale for writing	90	223	67	f	248	2	O
316	2020-11-11	<p>Students will demonstrate an understanding of Second Language Acquisition and Pedagogy theories. They will examine the content they have covered in the MALT Program as a whole to (a) analyze its supporting theories and (b) highlight their own application of those theories in their selected projects. Students will produce a self-reflective articulation of their process of becoming language teachers.&nbsp;</p><p>See description of the measure below:</p><p>The Portfolio will include an (a) introduction, (b) a selection of three papers or projects completed by the student for each ot the 3 areas of study (language, SLA theory and pedagogy, research and pedagogy), and (c) a conclusion</p><br>	f	<p><span style="line-height: 107%;">The Portfolio is presented to the MALT Portfolio Committee in  the student’s second to last semester in the Program. Three Faculty members  agree to serve on the MALT Portfolio Committee on a yearly basis.</span><br></p>	t		<p><span style="line-height: 107%;">Data  is collected each time a Portfolio is presented and assessed (usually once a  semester). Assessment will take place mid-April in the spring and mid-November  in the fall.</span><br></p>	80% is passing grade. Passing grade in the Portfolio is needed to be able to take Comprehensive Exams.	90	225	67	f	249	2	O
319	2020-11-11	<p><b><span style="line-height: 107%;">The  comprehensive exam asks questions about domain relevant issues and data.&nbsp; The sub-elements of the rubric address the  ability to find the appropriate information, cite it effectively and relate it  to the field.&nbsp; In addition, the rubric  includes elements of writing in APA style.</span></b><br></p>	t	<p><span style="line-height: 107%;">Comprehensive Exam</span><br></p>	t		<p style="line-height: normal;">Comprehensive exams are generally given  in the spring, although there is considerable variation across programs.</p>	Majority of raters rank the student proficient in all sub elements of the rubric	100	228	62	f	251	1	O
320	2020-11-11	<p><b><span style="line-height: 107%;">A major part of any proposal defense is the  development and statement of the problem including the methods used to resolve  the issue.&nbsp; The attached rubric score  those elements.</span></b><br></p>	t	<p><span style="line-height: 107%;">Proposal defense</span><br></p>	t		<p>Typically in 2nd or 3rd year<br></p>	Majority of raters rank the student proficient in all sub elements of the rubric	100	229	62	f	252	1	O
322	2020-11-11	<p><b><span style="line-height: 107%;">The  Comprehensive exam is a written product.&nbsp;  Although the particular questions differ by PhD area, the intent of the  questions is to assess knowledge and synthesis of domain relevant knowledge.&nbsp; Questions are based on courses required in  each area and are assessed by multiple raters. See attached rubric.&nbsp;&nbsp;</span></b><br></p>	f	<p><span style="line-height: 107%;">Comprehensive exam</span><br></p>	t		<p><span style="line-height: 107%;">At  the Comprehensive exam, generally the third year of the program.&nbsp; This date differs by student and program, but  is typically spring/summer.</span><br></p>	Majority of raters describe the exam as proficient on all sub-elements of the rubric.	100	231	63	f	254	1	O
323	2020-11-11	<p style=""><b><i><span style="font-weight: normal; line-height: normal;">&nbsp; &nbsp;</span></i></b><b>See  attached evaluation rubric.&nbsp; The elements  of the rubric include evaluation of students’ ability to summarize and interpret  results, propose new experiments and analyses and convey that information in a  formal written form.</b></p>	f	<p>Proposal defense, typically late 2nd or early 3rd year<br></p>	t		<p>At proposal defense&nbsp; typically 2nd or early 3rd year<br></p>	Majority of raters describe the exam as proficient on all sub-elements of the rubric.	100	232	63	f	255	1	O
324	2020-11-11	<p><b><span style="line-height: 107%;">See  attached evaluation rubric.&nbsp; The elements  of the dissertation rubric include the elements of the successful completion of  a research project including the analysis of the background and problem, the  conceptualization of the project, data analysis and formal research writing.</span></b><br></p>	t	<p><span style="line-height: 107%;">Dissertation Defense</span><br></p>	t		<p>Typically in the 3rd year, but can extend up to 8 years.<br></p>	Majority of raters describe the exam as proficient on all sub-elements of the rubric.	100	233	63	f	256	1	O
325	2020-11-11	<p style=""><b>The BDS  CBA learning modules provide examination of technical terminology pertaining to  concepts and principles of behavior analysis&nbsp;(see attached description)</b></p>	f	<p>Online</p>	t		<p>Online learning modules/tests completed throughout 2nd year<br></p>	90% pass rate on all learning modules/exams	100	234	61	f	257	1	O
326	2020-11-11	<p style=""><b>Practicum  supervisors provide an evaluation of student performance in practicum at the  end of every semester which includes competence in this SLO (see attached)</b></p>	f	<p><span style="line-height: 107%;">At Practicum location</span><br></p>	t			Student must attain marks of 3 or above in all areas by last semester of program	100	235	61	f	257	2	S
328	2020-11-11	<p style=""><b>Learning modules and examinations specifically address this  competency</b></p>	f	<p>Online</p>	t		<p>Online learning modules/tests completed throughout 2nd year<br></p>	90% pass rate on all learning modules/exams	100	234	61	t	258	1	O
329	2020-11-11	<p style=""><b>The Comprehensive Examination oral presentation will be  expected to include description and graphic representation of data collected  with emphasis on single subject design</b></p>	t	<p><span style="line-height: 107%;">at UNO or MMI</span><br></p>	t		<p style="line-height: normal;">During final semester of program</p>	Student must receive pass grade from faculty committee	100	236	61	t	258	2	O
331	2020-11-11	<p style=""><b>Learning modules and examinations specifically address this  competency</b></p>	f	<p>Online</p>	t		<p>Online learning modules/tests completed throughout 2nd year<br></p>	90% pass rate on all modules	100	234	61	t	259	1	O
333	2020-11-11	<p style=""><b>Practicum  supervisors provide an evaluation of student performance in practicum at the  end of every semester which includes competence in this SLO (see attached)</b></p>	f	<p><span style="line-height: 107%;">At Practicum location</span><br></p>	t			Student must attain marks of 3 or above in all areas by last semester of program	100	235	61	f	260	1	S
334	2020-11-11	<p style=""><b>The student’s case study will directly demonstrate the  application of principles of behavior and link with multiple areas of  investigation (i.e., research) and practice</b></p>	t	<p><span style="line-height: 107%;">at UNO or MMI</span><br></p>	t		<p style="line-height: normal;">During final semester of program</p>	Student must receive pass grade from faculty committee	100	236	61	t	260	2	O
332	2020-11-11	<p style=""><b>Students will be expected to provide a conceptualization of  their case consistent with behavioral theory (radical behaviorism), concepts  and principles&nbsp;</b></p>	t	<p><span style="line-height: 107%;">at UNO or MMI</span><br></p>	t		<p style="line-height: normal;">During final semester of program</p>	Student must receive pass grade from faculty committee	100	236	61	t	259	2	O
330	2020-11-11	<p style=""><b>Single subject design is a hallmark of applied behavior  analysis. A student’s thesis or research other than thesis will be expected to  emphasize single subject design methodology. (see attached description)</b></p>	t	<p><span style="line-height: 107%;">at UNO or MMI</span><br></p>	f	<p><span style="line-height: 107%;">Thesis or Research other than Thesis are strongly  encouraged but not currently required by all students. &nbsp;</span><br></p>	<p><span style="line-height: 107%;">During student’s final defense or Research other than  Thesis presentation</span><br></p>	Student must pass Thesis defense with faculty committee or receive a grade of A or B by faculty advisor for Research other than Thesis project	100	237	61	t	258	3	O
335	2020-11-11	<p style=""><b><span style="line-height: 107%;">The Thesis or Research other than Thesis is  expected to be an applied research project with directly links to relevant  basic research.</span></b><br></p>	t	<p><span style="line-height: 107%;">at UNO or MMI</span><br></p>	f	<p><span style="line-height: 107%;">Thesis or Research other than Thesis are strongly  encouraged but not currently required by all students. &nbsp;</span><br></p>	<p><span style="line-height: 107%;">During student’s final defense or Research other than  Thesis presentation</span><br></p>	Student must pass Thesis defense with faculty committee or receive a grade of A or B by faculty advisor for Research other than Thesis project	100	237	61	t	261	1	O
336	2020-11-11	<p style=""><b>&nbsp;</b><b style="">The Comprehensive Examination presentation of the case study  is expected to include a link to relevant research (applied and basic) that  informs decision making during the case</b></p>	t	<p><span style="line-height: 107%;">at UNO or MMI</span><br></p>	t		<p style="line-height: normal;">During final semester of program</p>	Student must receive pass grade from faculty committee	100	236	61	t	261	2	O
337	2020-11-11	<p style=""><b>Learning modules and examinations specifically address this  competency</b></p>	f	<p>Online</p>	t		<p>Online learning modules/tests completed throughout 2nd year<br></p>	90% pass rate on all modules	100	234	61	f	262	1	O
338	2020-11-11	<p style=""><b>Practicum  supervisors provide an evaluation of student performance in practicum at the  end of every semester which includes competence in this SLO (see attached)</b></p>	f	<p><span style="line-height: 107%;">At Practicum location</span><br></p>	t			Student must attain marks of 3 or above in all areas by last semester of program	100	235	61	t	262	2	S
339	2020-11-11	<p style=""><b>Students will be expected to be able to orally describe and  discuss ethical and legal issues related to their case study</b></p>	t	<p><span style="line-height: 107%;">at UNO or MMI</span><br></p>	t		<p style="line-height: normal;">During final semester of program</p>	Student must receive pass grade from faculty committee	100	236	61	t	262	3	O
340	2020-11-11	<p><span style="line-height: 107%;">Clarity,  persuasiveness, and appropriateness of the student's written communications  given the person or audience will be assessed through a written practicum  report evaluated by site supervisor.</span><br></p>	f	<p><span style="line-height: 107%;">Comprehensive exam</span><br></p>	t		<p style="line-height: normal;"><span style="">All second-year M.S. students (typically 2-6  students per year) enrolled in PSYC 8950 (Practicum for Master’s Students).</span></p><p style="line-height: normal;">At the end of the practicum period, the supervisor is asked to complete a survey about the student performance<br><span style=""></span></p>	Proficiency requires a score of 4/5  (very good or excellent) on the rubric	80	238	64	f	263	1	O
341	2020-11-11	<p><span style="">Oral communication evaluated while conducting  practicum project by site supervisor for </span><span style="line-height: 107%;">clarity,  conciseness, and grammatical correctness.</span><br></p>	f	<p><span style="line-height: 107%;">During practicum</span><br></p>	t		<p style="line-height: normal;">At the end of the practicum period<span style=""></span></p>	Proficiency requires a score of 4/5  (very good or excellent) on the rubric	80	239	64	f	264	1	O
342	2020-11-11	<p><span style="">Demonstrating knowledge of I/O psychology while  conducting practicum project evaluated by site supervisor. List of specific  knowledge areas is provided.</span><br></p>	f	<p><span style="line-height: 107%;">During practicum</span><br></p>	t		<p style="line-height: normal;">At the end of the practicum period<span style=""></span></p>	Proficiency requires a score of 4/5  (very good or excellent) on the rubric	80	239	64	t	265	1	O
343	2020-11-11	<p><span style="">Successful completion of at least 150 hours of work on  an applied project in a field setting and evaluation of practicum report will  show knowledge and mastery of practitioner skills such as application of I/O  theory and evidence to a practical problem.</span><br></p>	f	<p>N/A</p>	t		<p style="line-height: normal;"><span style="">At  the conclusion of practicum</span></p>	Completion of 150 hours in a field setting	100	240	64	f	266	1	O
345	2020-12-03	<p><span style="line-height: 107%;">Students collect and  present evidence of attainment of the program objective from course work and  other sources, prepare an original statement that documents their experiences  and evidence relative to the SLO, and respond to questions about the SLO posed  by faculty in an oral defense meeting.&nbsp;  Evaluation of SLO 1 is broken down into three sections: Student (a)  selects and applies appropriate assessment method; (b) understands and uses  data in the problem solving process; and (c) understands and uses assessment in  an accountability context.&nbsp; Each section  contains multiple Likert scale items on which the student is scored based on  evidence provided in the portfolio, verbal statements from the oral defense,  and faculty observations of the student.&nbsp;  Ratings are made on the School Psychology Evaluation form.</span><br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	319	1	Y
346	2020-12-03	<p><span style="line-height: 107%;">Students collect and  present evidence of attainment of the program objective from course work and  other sources, prepare an original statement that documents their experiences  and evidence relative to the SLO, and respond to questions about the SLO posed  by faculty in an oral defense meeting.&nbsp;  Evaluation of SLO 2 is broken down into four sections: Student (a) displays appropriate interpersonal communication skills; (b) coveys information accurately and effectively; (c) works collaboratively with others; and (d) displays knowledge and skill in consultative problem solving.&nbsp; Each section contains multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.</span><br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	320	1	Y
383	2020-12-03	<p>The attachment titled "EDL 9550 Symposium on School Leadership Research Brief Components" describes the assignment. The assignment is formal, academic writing in which the students must demonstrate a command of the information and implications for our area school districts. The topics are robust and require quality, concise writing to communication the idea to a broader audience. Additionally, students present their work to peers in class as a formal presentation.</p>	t	<p>Students may take EDL 9550 at any point in their coursework. Many choose to take it half-way through their plan of study.</p>	f	<p>Some students have program-specific requirements such as our Next Wave Librarian students. Most students take Symposium.</p>		In the current form, our goal is to have students earn the points equivalent to an A.	100	207	57	f	302	1	Y
364	2020-12-03	<p><span style="line-height: 107%;">Evaluation of SLO 5 is broken down into five sections: Student (a) knows the components of effective problem solving team structure and operation; (b) is able to conceptualize change-related phenomena in systems terms, and to recommend/implement corresponding and effective strategic responses; (c) conducts training activities for professional staff and parents/caregivers; (d) facilitates the development of attitudes and practices that foster a positive school climate; and (e) demonstrates knowledge and skill of an MTSS service delivery model. Each section contains multiple Likert scale items on which the student is scored based on supervisor observations and portfolio content. Ratings are made on the School Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	311	1	Y
365	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	311	2	Y
408	2021-01-20	Use of appropriate design principles.<br>	t	<p>Project<br></p>	t			Acceptable	80	14	1	f	351	1	Y
348	2020-12-03	<p><span style="line-height: 107%;">Students collect and  present evidence of attainment of the program objective from course work and  other sources, prepare an original statement that documents their experiences  and evidence relative to the SLO, and respond to questions about the SLO posed  by faculty in an oral defense meeting.&nbsp;  Evaluation of SLO 4 is broken down into four sections: Student (a) knows when and how to use empirically validated behavioral intervention strategies; (b) knows when and how to use short term counseling approaches; (c) knows when and how to use small group skill development training; and (d) suggests and is able to apply appropriate intervention monitoring methods. Each section contains multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student. Ratings are made on the School Psychology Evaluation form.</span><br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	322	1	Y
349	2020-12-03	<p><span style="line-height: 107%;">Evaluation of SLO 5 is broken down into five sections: Student (a) knows the components of effective problem solving team structure and operation; (b) is able to conceptualize change-related phenomena in systems terms, and to recommend/implement corresponding and effective strategic responses; (c) conducts training activities for professional staff and parents/caregivers; (d) facilitates the development of attitudes and practices that foster a positive school climate; and (e) demonstrates knowledge and skill of an MTSS service delivery model.&nbsp; Each section contains multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.</span><br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	323	1	Y
350	2020-12-03	<p>Students collect and present evidence of attainment of the program objective from course work and other sources, prepare an original statement that documents their experiences and evidence relative to the SLO, and respond to questions about the SLO posed by faculty in an oral defense meeting.&nbsp; Evaluation of SLO 6 is broken down into one section. This section contains multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.<br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	324	1	Y
351	2020-12-03	<p>Students collect and present evidence of attainment of the program objective from course work and other sources, prepare an original statement that documents their experiences and evidence relative to the SLO, and respond to questions about the SLO posed by faculty in an oral defense meeting.&nbsp; Evaluation of SLO 7 is broken down into one section. This section contains multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.<br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	325	1	Y
352	2020-12-03	<p>Students collect and present evidence of attainment of the program objective from course work and other sources, prepare an original statement that documents their experiences and evidence relative to the SLO, and respond to questions about the SLO posed by faculty in an oral defense meeting.&nbsp; Evaluation of SLO 8 is broken down into one section. This section contains multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.<br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	326	1	Y
353	2020-12-03	<p>Students collect and present evidence of attainment of the program objective from course work and other sources, prepare an original statement that documents their experiences and evidence relative to the SLO, and respond to questions about the SLO posed by faculty in an oral defense meeting.&nbsp; Evaluation of SLO 9 is broken down into one section. This section contains multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.<br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	327	1	Y
287	2020-12-03	<p>The Superintendent Internship is co-taught with a supervisor in the field ( a former local superintendent) and a current faculty member who is also a former superintendent. In this partnership, the field supervisor and faculty member are able to compare classroom theory analysis with real-world application of our graduate students.</p><p>Students, field supervisor, and UNO faculty collaborative determine the five short-term activity/project expectations and long-term project. Woven within those expectations are a combination of content knowledge from the PSELs as well as specific comments of CAEP 1.1.6 (dispositions, laws, policies, and ethics).</p>	f	<p>N/A</p>	f	<p>Not all students pursue superintendent certification, while most do.</p>		In the current form, our goal is to have students earn the points equivalent to an A.	100	208	56	t	299	1	Y
354	2020-12-03	<p><span style="line-height: 107%;">Evaluation of SLO 10 is broken down into four sections: Student (a) knows and applies laws and regulations governing special education identification and placement activities; (b) knows and applies pertinent legal and ethical standards in professional activities; (c) participates in appropriate professional development activities; and (d) displays appropriate attitudes and behavior related to professional and employment status.&nbsp; These sections contain multiple Likert scale items on which the student is scored based on evidence provided in the portfolio, verbal statements from the oral defense, and faculty observations of the student.&nbsp; Ratings are made on the School Psychology Evaluation form.</span><br></p>	t	<p><span style="line-height: 107%;">In individual meetings with students</span><br></p>	t			The expectation is the individual students will score a mean of 3.0 on the SLO items.	100	242	65	t	328	1	Y
409	2021-01-20	Ignore - Accredited Form	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	261	3	t	6	2	S
410	2021-01-20	Use of appropriate design principles.<br>	t	<p>Project<br></p>	t			Acceptable	80	14	3	f	352	1	Y
358	2020-12-03	<p><span style="line-height: 107%;">Students are evaluated  using direct observation and review of work products at the end of their internship  by the university supervisor and the field-based supervisor. &nbsp;They also produce an internship portfolio that  showcases work completed during the internship relevant to this SLO (and  others). &nbsp;Evaluation of SLO 2 is broken down into four sections: Student (a) displays appropriate interpersonal communication skills; (b) coveys information accurately and effectively; (c) works collaboratively with others; and (d) displays knowledge and skill in consultative problem solving.&nbsp; Each section contains multiple Likert scale items on which the student is scored based on supervisor observations and portfolio content.&nbsp; Ratings are made on the School Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	308	1	Y
357	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	307	2	Y
359	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	308	2	Y
363	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	310	2	Y
360	2020-12-03	<p><span style="line-height: 107%;">Students are evaluated  using direct observation and review of work products at the end of their internship  by the university supervisor and the field-based supervisor. &nbsp;They also produce an internship portfolio that  showcases work completed during the internship relevant to this SLO (and  others). &nbsp;Evaluation of SLO 3 is broken down into three sections: Student (a) interprets, recommends, and supports accountability standards and procedures; (b) knows when and how to use empirically validated academic intervention strategies; and (c) suggests and is able to apply appropriate cognitive/academic intervention monitoring methods.&nbsp; Each section contains multiple Likert scale items on which the student is scored based on supervisor observations and portfolio content.&nbsp; Ratings are made on the School Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	309	1	Y
361	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	309	2	Y
367	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	312	2	Y
371	2020-12-03	<p><span style="line-height: 107%;">Evaluation of SLO 10  is broken down into four sections: Student (a) knows and applies laws and  regulations governing special education identification and placement activities;  (b) knows and applies pertinent legal and ethical standards in professional  activities; (c) participates in appropriate professional development  activities; and (d) displays appropriate attitudes and behavior related to  professional and employment status. Each section contains multiple Likert scale  items on which the student is scored based on supervisor observations and  portfolio content.&nbsp; Ratings are made on  the School Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	316	1	Y
402	2021-01-20	Ignore - Accredited Form	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Third year	Ignore - Accredited Form	0	257	78	t	347	1	O
411	2021-01-20	<p>The project will test application of skills in machine learning.</p>	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	246	82	t	353	1	S
369	2020-12-03	<p style="">Students are evaluated using  direct observation and review of work products at the end of their internship  by the university supervisor and the field-based supervisor.&nbsp; They also produce an internship portfolio that  showcases work completed during the internship relevant to this SLO (and  others).&nbsp; Evaluation of SLO 8 is broken  down into one section. This section contains multiple Likert scale items on  which the student is scored based on supervisor observations and portfolio  content.&nbsp; Ratings are made on the School  Psychology Evaluation form and intern portfolio rubric.<b></b></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	314	1	Y
370	2020-12-03	<p style=""><b><i><span style="font-weight: normal; line-height: normal;">&nbsp;&nbsp;</span></i></b>Students are evaluated using  direct observation and review of work products at the end of their internship  by the university supervisor and the field-based supervisor.&nbsp; They also produce an internship portfolio that  showcases work completed during the internship relevant to this SLO (and  others).&nbsp; Evaluation of SLO 9 is broken  down into one section. This section contains multiple Likert scale items on  which the student is scored based on supervisor observations and portfolio  content.&nbsp; Ratings are made on the School  Psychology Evaluation form and intern portfolio rubric.<b></b></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	315	1	Y
376	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	316	2	Y
284	2020-12-03	<p>Students must pass the Superintendent Praxis test for Nebraska to earn a Nebraska Superintendent Certificate. This test is registered for and taken outside of UNO classes and reflects the PSEL standards of content throughout the test. The test is a combination of multiple choice and analysis of short answer.</p>	t	<p>At the very end of the completed coursework. Students sign up on their own for the assessment and results are reported to our department.</p>	f	<p>Some students do not pursue superintendent certificate, while most do.</p>		A qualifying score of 152 is set by the Nebraska Department of Education	100	205	56	t	290	1	S
381	2020-12-03	<p>Students must pass the Superintendent Praxis test for Nebraska to earn a Nebraska Superintendent Certificate. This test is registered for and taken outside of UNO classes and reflects the PSEL standards of content throughout the test. The test is a combination of multiple choice and analysis of short answer.</p>	t	<p>At the very end of the completed coursework. Students sign up on their own for the assessment and results are reported to our department.</p>	f	<p>Some students do not pursue superintendent certificate, while most do.</p>		A qualifying score of 152 is set by the Nebraska Department of Education	100	205	57	f	300	1	S
382	2020-12-03	<p>The preproposal is an independent paper submitted for our doctoral comprehensive exams. The paper is the opportunity to vet their dissertation idea and formalize the essential elements that must be aligned prior to engaging in proposal writing. The preproposal is a synthesis of their research ideas in preparation for candidacy. To complete the elements of a preproposal, students must align their topic of interest with context, research framework, overarching and sub questions, measurement, and data analysis plan.</p>	t	<p>N/A</p>	t		<p>N/A</p>	In the attachment titled "EDL Pre-Proposal Rubric Development: Iteration 1" you will see an explanation of the proficiency threshold for each domain. The rubric is currently being validated.	100	206	57	f	301	1	O
374	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	314	2	Y
373	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	313	2	Y
375	2020-12-03	<p style="">The School Psychology Praxis exam  was developed to be aligned with national standards for school psychology  graduate preparation and practice, thus it has items that measure each SLO to  some degree.<b></b></p>	f	<p><span style="line-height: 107%;">Students complete the Praxis exam  during their third or last year of the program.&nbsp;</span><br></p>	t			The passing score for the Praxis exam is 147. Our program requires this passing score from our students as does our national association for national school psychology certification.	100	244	66	t	315	2	Y
384	2020-12-03	<p>The Superintendent Internship is co-taught with a supervisor in the field ( a former local superintendent) and a current faculty member who is also a former superintendent. In this partnership, the field supervisor and faculty member are able to compare classroom theory analysis with real-world application of our graduate students.</p><p>Students, field supervisor, and UNO faculty collaborative determine the five short-term activity/project expectations and long-term project. Woven within those expectations are a combination of content knowledge from the PSELs as well as specific comments of CAEP 1.1.6 (dispositions, laws, policies, and ethics).</p>	f	<p>N/A</p>	f	<p>Not all students pursue superintendent certification, while most do.</p>		In the current form, our goal is to have students earn the points equivalent to an A.	100	208	57	f	303	1	Y
356	2020-12-03	<p><span style="line-height: 107%;">Students are evaluated  using direct observation and review of work products at the end of their internship  by the university supervisor and the field-based supervisor. &nbsp;They also produce an internship portfolio that  showcases work completed during the internship relevant to this SLO (and  others). &nbsp;Evaluation of SLO 1 is broken  down into three sections: Student (a) selects and applies appropriate  assessment method; (b) understands and uses data in the problem solving  process; and (c) understands and uses assessment in an accountability  context.&nbsp; Each section contains multiple  Likert scale items on which the student is scored based on supervisor observations  and portfolio content.&nbsp; Ratings are made  on the School Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	307	1	Y
362	2020-12-03	<p><span style="line-height: 107%;">Students are evaluated  using direct observation and review of work products at the end of their internship  by the university supervisor and the field-based supervisor. &nbsp;They also produce an internship portfolio that  showcases work completed during the internship relevant to this SLO (and  others). &nbsp;Evaluation of SLO 4 is broken down into four sections: Student (a) knows when and how to use empirically validated behavioral intervention strategies; (b) knows when and how to use short term counseling approaches; (c) knows when and how to use small group skill development training; and (d) suggests and is able to apply appropriate intervention monitoring methods.&nbsp; Each section contains multiple Likert scale items on which the student is scored based on supervisor observations and portfolio content.&nbsp; Ratings are made on the School Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	310	1	Y
366	2020-12-03	<p><span style="line-height: 107%;">Students are evaluated  using direct observation and review of work products at the end of their  internship by the university supervisor and the field-based supervisor.&nbsp; They also produce an internship portfolio that  showcases work completed during the internship relevant to this SLO (and  others).&nbsp; Evaluation of SLO 6 is broken  down into one section. This section contains multiple Likert scale items on  which the student is scored based on supervisor observations and portfolio  content.&nbsp; Ratings are made on the School  Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	312	1	Y
368	2020-12-03	<p><span style="line-height: 107%;">Students are evaluated using direct observation and review of work products at the end of their internship by the university supervisor and the field-based supervisor.&nbsp; They also produce an internship portfolio that showcases work completed during the internship relevant to this SLO (and others).&nbsp; Evaluation of SLO 7 is broken down into one section. This section contains multiple Likert scale items on which the student is scored based on supervisor observations and portfolio content.&nbsp; Ratings are made on the School Psychology Evaluation form and intern portfolio rubric.</span><br></p>	t	<p><span style="line-height: 107%;">Students submit intern evaluations  and portfolios at the conclusion of their internship.</span><br></p>	t			The expectation is that individual students will receive evaluations at or above a mean of 4.0 across all items for the SLO, earn ratings of adequate or higher on the portfolio rubric,  and earn a grade of B or higher for Internship (PSYC 9980).	100	243	66	t	313	1	Y
385	2020-12-04	<p>Algorithm analysis is central to the theory of CS.&nbsp;</p>	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	245	69	f	330	1	Y
386	2020-12-04	<p>The project will test application of skills in machine learning.</p>	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	246	70	f	331	1	Y
387	2020-12-09	<p>N/A</p>	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	247	71	f	332	1	S
388	2020-12-09	<p>N/A</p>	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	247	71	f	333	1	S
389	2020-12-09	<p>N/A</p>	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	247	71	f	334	1	S
390	2020-12-09	<p>N/A</p>	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	247	71	f	335	1	S
391	2020-12-09	<p>N/A</p>	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	247	71	f	336	1	S
396	2020-12-10	Ignore - Accredited Form	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	252	74	f	341	1	S
397	2020-12-10	Ignore - Accredited Form	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	253	74	f	342	1	Y
398	2020-12-10	Ignore - Accredited Form	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	254	75	f	343	1	Y
399	2020-12-10	<p>This assignment measures...</p>	f	<p>TEST 450: Senior Seminar</p>	t			Scoring a 3 or above on each item of the rubric	95	255	80	f	344	1	Y
400	2020-12-10	<p>This assessment measures...</p>	f	<p>TEST 450: Senior Seminar</p>	t			Scoring a 3 or above on each item of the rubric	95	256	79	f	345	1	Y
401	2020-12-10	<p>This assignment measures...</p>	f	<p>TEST 450: Senior Seminar</p>	t			Scoring a 3 or above on each item of the rubric	95	255	79	f	346	1	Y
405	2020-12-15	<p>Students can talk to many stakeholders.</p>	t	<p>Public venue, poster session.</p>	t			Satisfactory	80	259	1	f	349	1	S
406	2021-01-14	Ignore - Accredited Form	t	Ignore - Accredited Form	t	Ignore - Accredited Form	Ignore - Accredited Form	Ignore - Accredited Form	0	260	78	f	348	1	Y
407	2021-01-19	<p>This assessment measures...</p>	f	<p>TEST 450: Senior Seminar</p>	t			Scoring a 3 or above on each item of the rubric	95	256	81	f	350	1	Y
\.


--
-- Data for Name: makeReports_assessmentversion_supplements; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_assessmentversion_supplements" (id, assessmentversion_id, assessmentsupplement_id) FROM stdin;
\.


--
-- Data for Name: makeReports_college; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_college" (id, name, active) FROM stdin;
2	A&S - College of Arts and Sciences	t
4	CBA - College of Business Administration	t
3	CPACS - College of Public Affairs & Community Service	t
5	CFAM - College of Communication, Fine Arts, & Media	t
6	CEHHS - College of Education, Health, & Human Sciences	t
1	IS&T - College of Information Science & Technology	t
7	MULT - Multiple Colleges	t
8	TEST - College of Testing this System	t
\.


--
-- Data for Name: makeReports_dataadditionalinformation; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_dataadditionalinformation" (id, comment, report_id, supplement) FROM stdin;
1	Different Assessment Style: See Attachment For Results	5	Economics_BA_Report_Results_Attachment_2017-18.docx
\.


--
-- Data for Name: makeReports_decisionsactions; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_decisionsactions" (id, text, "sloIR_id") FROM stdin;
1	<p style=""><b><i>Decision  making process</i></b><b><i><span style="line-height: 115%;">:</span></i></b>  Based on our data reported, we achieved our proficiency target for this SLO.  The Introduction on the final paper is our lowest indicator, though still meets  our standard. In reviewing the rubric, we may decide to revisit whether the  second column also meets our threshold for proficiency. If not, we need to  determine how to work with our students to ensure that they can clearly set  goals and objectives. We are pleased with our increased numbers compared to our  prior report. <span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Decision </span></i></b><b><i>m</i></b><b><i><span style="line-height: 115%;">aker(s):</span></i></b><b><i> </i></b>Primarily  the assessment and practicum coordinators; however, the entire faculty will be  involved in this discussion and final decision at our next faculty meeting in Spring  2020.<span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Decision timeline:</span></i></b><b><i>  </i></b>&nbsp;This preliminary decision was made when  preparing this report in January 2020; however, as indicated above, no final  decisions will be made until our final spring 2020 faculty meeting. <span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Data used for decision:</span></i></b><b><i>  </i></b>Practicum  student data from Spring 2018 through Fall 2019.<span style="line-height: 115%;"></span></p><p>                <b><i><span style="line-height: 115%;">Action Timeline:</span><span style="line-height: 115%;"> </span></i></b><span style="line-height: 115%;">If we choose to make a  change, we will implement these changes beginning in the Summer 2020 semester.&nbsp;</span><br></p>	1
2	<p style=""><b><i>Decision  making process</i></b><b><i><span style="line-height: 115%;">:</span></i></b><b><i>  </i></b>For  SLO 2, we achieved our proficiency threshold for each indicator and feel more  confident in these results given the larger numbers. We do not anticipate any  changes at this time; however, we would like to take note that similar to SLO  I, the Introduction was the one indicator that was lowest, yet still achieved  our target. In reviewing the rubric, we may decide to revisit whether the  second column also meets our threshold for proficiency. If not, we need to  determine how to work with our students to ensure that they can clearly set  goals and objectives.<span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Decision </span></i></b><b><i>m</i></b><b><i><span style="line-height: 115%;">aker(s):</span></i></b><b><i> </i></b>Primarily  the assessment and practicum coordinators; however, the entire faculty will be  involved in this discussion and final decision at our next faculty meeting in  Spring 2020.<span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Decision timeline:</span></i></b><b><i>  </i></b>&nbsp;This preliminary decision was made when  preparing this report in January 2020; however, as indicated above, no final  decisions will be made until our final spring 2020 faculty meeting. <span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Data used for decision:</span></i></b><b><i>  </i></b>Practicum  student data from Spring 2018 through Fall 2019.<span style="line-height: 115%;"></span></p><p>                <b><i><span style="line-height: 115%;">Action Timeline:</span><span style="line-height: 115%;"> </span></i></b><span style="line-height: 115%;">If we choose to make a  change, we will implement these changes beginning in the Summer 2020 semester.</span><br></p>	2
3	<p style=""><b><i>Decision  making process</i></b><b><i><span style="line-height: 115%;">:</span></i></b><b><i>  </i></b>For  SLO 3, we achieved our proficiency threshold for each indicator and feel more  confident in these results given the larger numbers. We do not anticipate any  major changes at this time. However, as none of the indicators on our progress  report rubric focus exclusively on grammar and mechanics, which is more  appropriate for this SLO, we may need to revise our rubric to address this SLO  more satisfactorily (for the progress report measure). Alternatively, we  already have two other measures (one direct and one indirect) to adequately  assess this SLO, thus, a revision would not necessarily be required. </p><p style=""><b><i><span style="line-height: 115%;">Decision </span></i></b><b><i>m</i></b><b><i><span style="line-height: 115%;">aker(s):</span></i></b><b><i> </i></b>Primarily  the assessment and practicum coordinators; however, the entire faculty will be  involved in this discussion and final decision at our next faculty meeting in  Spring 2020.</p><p style=""><b><i><span style="line-height: 115%;">Decision timeline:</span></i></b><b><i>  </i></b>&nbsp;This preliminary decision was made when  preparing this report in January 2020; however, as indicated above, no final  decisions will be made until our final spring 2020 faculty meeting. <span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Data used for decision:</span></i></b><b><i>  </i></b>Practicum  student data from Spring 2018 through Fall 2019.<span style="line-height: 115%;"></span></p><p>                <b><i><span style="line-height: 115%;">Action Timeline:</span><span style="line-height: 115%;"> </span></i></b><span style="line-height: 115%;">If we choose to make a  change, we will implement these changes beginning in the Summer 2020 semester.</span><br></p>	3
4	<p style=""><b><i>Decision  making process:</i></b> For SLO 4, we achieved our proficiency threshold  for each indicator and feel more confident in these results given the larger  numbers. We do not anticipate any changes at this time. &nbsp;</p><p style=""><b><i><span style="line-height: 115%;">Decision </span></i></b><b><i>m</i></b><b><i><span style="line-height: 115%;">aker(s):</span></i></b><b><i> </i></b>Primarily  the assessment and practicum coordinators; however, the entire faculty will be  involved in this discussion and final decision at our next faculty meeting in  Spring 2020.<span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Decision timeline:</span></i></b><b><i>  </i></b>&nbsp;This preliminary decision was made when  preparing this report in January 2020; however, as indicated above, no final  decisions will be made until our final spring 2020 faculty meeting. <span style="line-height: 115%;"></span></p><p style=""><b><i><span style="line-height: 115%;">Data used for decision:</span></i></b><b><i>  </i></b>Practicum  student data from Spring 2018 through Fall 2019.<span style="line-height: 115%;"></span></p><p>                <b><i><span style="line-height: 115%;">Action Timeline:</span><span style="line-height: 115%;"> </span></i></b><span style="line-height: 115%;">If we choose to make a  change, we will implement these changes beginning in the Summer 2020 semester.</span><br></p>	4
5	<p>No actions.<br></p>	7
12	<p style="line-height: 115%;">There are an insufficient number of observations to  make informed decisions.</p>	14
13	<p><span style="line-height: 115%;">Not applicable at this time.</span><br></p>	15
14	<p><span style="line-height: 115%;">Not applicable at this time.</span><br></p>	16
15	<p><span style="line-height: 115%;">Not applicable at this time.</span><br></p>	17
6	<p style="text-align: justify;">We consider the <span style=""><img></span>&nbsp;values in the microeconomics sections to be  very good.&nbsp; In fact, purely by random  student selection we expect these scores to decease in the next cycle. &nbsp;&nbsp;For comparison, the national-norming average <span style=""><img></span>&nbsp;values on the microeconomics TUCE (Test of  Understanding College Economics) is 21% (Smith and Wagner, 2018, endnote 12,  online appendix) – we meet or exceed this benchmark on all microeconomics SLOs.  &nbsp;&nbsp;&nbsp;Like our Intermediate Microeconomics assessment questions, the  TUCE is overwhelmingly application questions (ours contains some analysis  questions as well).&nbsp; In recent iterations  of our results, all micro theory SLOs are <b><i>statistically</i></b> better than our  national benchmark.&nbsp; </p><p style="text-align: justify;">&nbsp;</p><p>        <span style="line-height: 107%;">Nonetheless, the spring instructor will allocate  more time to SLO B and less to SLO C in the next iteration while the fall instructor  will do the opposite.&nbsp; At the question  level, each instructor has their own areas they wish to improve.&nbsp; These overall results are shared with the  other stakeholders in the department at the yearly August meeting. However, the  most direct path to pedagogical improvement (and thus learning) is the  instructor level report.&nbsp; Principles  level improvements that flow into Intermediate level courses are also discussed  in the August meeting.</span><br></p>	8
7	<p style="text-align: justify;">We consider the <span style=""><img></span>&nbsp;values in the microeconomics sections to be  very good.&nbsp; In fact, purely by random  student selection we expect these scores to decease in the next cycle. &nbsp;&nbsp;For comparison, the national-norming average <span style=""><img></span>&nbsp;values on the microeconomics TUCE (Test of  Understanding College Economics) is 21% (Smith and Wagner, 2018, endnote 12,  online appendix) – we meet or exceed this benchmark on all microeconomics SLOs.  &nbsp;&nbsp;&nbsp;Like our Intermediate Microeconomics assessment questions, the  TUCE is overwhelmingly application questions (ours contains some analysis  questions as well).&nbsp; In recent iterations  of our results, all micro theory SLOs are <b><i>statistically</i></b> better than our  national benchmark.&nbsp; </p><p style="text-align: justify;">&nbsp;</p><p>        <span style="line-height: 107%;">Nonetheless, the spring instructor will allocate  more time to SLO B and less to SLO C in the next iteration while the fall instructor  will do the opposite.&nbsp; At the question  level, each instructor has their own areas they wish to improve.&nbsp; These overall results are shared with the  other stakeholders in the department at the yearly August meeting. However, the  most direct path to pedagogical improvement (and thus learning) is the  instructor level report.&nbsp; Principles  level improvements that flow into Intermediate level courses are also discussed  in the August meeting.</span><br></p>	9
8	<p style="text-align: justify;">We consider the <span style=""><img></span>&nbsp;values in the microeconomics sections to be  very good.&nbsp; In fact, purely by random  student selection we expect these scores to decease in the next cycle. &nbsp;&nbsp;For comparison, the national-norming average <span style=""><img></span>&nbsp;values on the microeconomics TUCE (Test of  Understanding College Economics) is 21% (Smith and Wagner, 2018, endnote 12,  online appendix) – we meet or exceed this benchmark on all microeconomics SLOs.  &nbsp;&nbsp;&nbsp;Like our Intermediate Microeconomics assessment questions, the  TUCE is overwhelmingly application questions (ours contains some analysis  questions as well).&nbsp; In recent iterations  of our results, all micro theory SLOs are <b><i>statistically</i></b> better than our  national benchmark.&nbsp; </p><p style="text-align: justify;">&nbsp;</p><p>        <span style="line-height: 107%;">Nonetheless, the spring instructor will allocate  more time to SLO B and less to SLO C in the next iteration while the fall instructor  will do the opposite.&nbsp; At the question  level, each instructor has their own areas they wish to improve.&nbsp; These overall results are shared with the  other stakeholders in the department at the yearly August meeting. However, the  most direct path to pedagogical improvement (and thus learning) is the  instructor level report.&nbsp; Principles  level improvements that flow into Intermediate level courses are also discussed  in the August meeting.</span><br></p>	10
9	<p>While we consider the <span style=""><img></span>&nbsp;values in the macroeconomics sections to be  good, some do not statistically exceed our national benchmark.&nbsp; The national-norming average <span style=""><img></span>&nbsp;values on the macroeconomics TUCE (Test of  Understanding College Economics) is 25% (Smith and Wagner, 2018, endnote 12,  online appendix).&nbsp; </p><p>&nbsp;</p><p>        <span style="line-height: 107%;">In future iterations  of the course, the spring instructor will dedicate more time to SLOs D and E  (particularly D).&nbsp; </span><span style="line-height: 107%;">At the question level, each instructor has their  own areas they wish to improve.&nbsp; These  overall results are shared with the other stakeholders in the department at the  yearly August meeting. However, the most direct path to pedagogical improvement  (and thus learning) is the instructor level report.&nbsp; Principles level improvements that flow into  Intermediate level courses are also discussed in the August meeting.</span><br></p>	11
10	<p>While we consider the <span style=""><img></span>&nbsp;values in the macroeconomics sections to be  good, some do not statistically exceed our national benchmark.&nbsp; The national-norming average <span style=""><img></span>&nbsp;values on the macroeconomics TUCE (Test of  Understanding College Economics) is 25% (Smith and Wagner, 2018, endnote 12,  online appendix).&nbsp; </p><p>&nbsp;</p><p>        <span style="line-height: 107%;">In future iterations  of the course, the spring instructor will dedicate more time to SLOs D and E  (particularly D).&nbsp; </span><span style="line-height: 107%;">At the question level, each instructor has their  own areas they wish to improve.&nbsp; These  overall results are shared with the other stakeholders in the department at the  yearly August meeting. However, the most direct path to pedagogical improvement  (and thus learning) is the instructor level report.&nbsp; Principles level improvements that flow into  Intermediate level courses are also discussed in the August meeting.</span><br></p>	12
11	<p>While we consider the <span style=""><img></span>&nbsp;values in the macroeconomics sections to be  good, some do not statistically exceed our national benchmark.&nbsp; The national-norming average <span style=""><img></span>&nbsp;values on the macroeconomics TUCE (Test of  Understanding College Economics) is 25% (Smith and Wagner, 2018, endnote 12,  online appendix).&nbsp; </p><p>&nbsp;</p><p>        <span style="line-height: 107%;">In future iterations  of the course, the spring instructor will dedicate more time to SLOs D and E  (particularly D).&nbsp; </span><span style="line-height: 107%;">At the question level, each instructor has their  own areas they wish to improve.&nbsp; These  overall results are shared with the other stakeholders in the department at the  yearly August meeting. However, the most direct path to pedagogical improvement  (and thus learning) is the instructor level report.&nbsp; Principles level improvements that flow into  Intermediate level courses are also discussed in the August meeting.</span><br></p>	13
16	<p><span style="line-height: 107%;">Based on the results  of the student projects posters regarding SLO 1, the geography faculty decided  to maintain this method of assessment.&nbsp;&nbsp;  The faculty did ask to improve the method of display for the students  work so starting in 2018 all posters were printed on high quality poster paper  and in 2019 all posters are now display using poster hangers.&nbsp; It was also suggested that a better method of  long-term archiving of the poster be put in place.&nbsp; At this point that method is still being  determined (both digital and physical storage)&nbsp;</span><br></p>	39
17	<p>In general, the faculty are pleased with the results of the assessment.&nbsp; The faculty would like to create a more  formal interview method.&nbsp; The chief goal  is to improve the sample size of graduates.&nbsp;  Several suggestions are under consideration (formal survey, alumni  counsel, and newsletters) but no formal action as been up in place.&nbsp;&nbsp;</p>	40
18	<p>Add more assignments to improve the practice of algorithm analysis in CSCI 8000.&nbsp;</p>	330
19	<p style="text-align: justify;">The MPA Program Committee reviews  and discusses assessment data on a regular basis. Assessment data was also  presented and discussed at the MPA Advisory Board meeting in April 2019. We  continue to meet or exceed expectations in all 5 SLOs.&nbsp; </p><p style="text-align: justify;">&nbsp;</p><p>        </p><p style="text-align: justify;">While we find the existing data  to be highly useful and we are encouraged by the fact we were recently  reaccredited (through 2026) with our current assessment model, we also question  if these measures fully address our desired learning outcomes.&nbsp; Our measures rely heavily on the capstone  project.&nbsp; These projects cover a wide  range of topics and methodologies, and therefore may fit with some SLOs more  than others. After consulting the MPA advisory committee in April 2019, we are now  exploring the idea of adding a portfolio component. The MPA committee is in the  beginning stages of this process.</p>	332
20	<p style="text-align: justify;">The MPA Program Committee reviews  and discusses assessment data on a regular basis. Assessment data was also  presented and discussed at the MPA Advisory Board meeting in April 2019. We  continue to meet or exceed expectations in all 5 SLOs.&nbsp; </p><p style="text-align: justify;">&nbsp;</p><p>        </p><p style="text-align: justify;">While we find the existing data  to be highly useful and we are encouraged by the fact we were recently  reaccredited (through 2026) with our current assessment model, we also question  if these measures fully address our desired learning outcomes.&nbsp; Our measures rely heavily on the capstone  project.&nbsp; These projects cover a wide  range of topics and methodologies, and therefore may fit with some SLOs more  than others. After consulting the MPA advisory committee in April 2019, we are now  exploring the idea of adding a portfolio component. The MPA committee is in the  beginning stages of this process.</p>	333
21	<p style="text-align: justify;">The MPA Program Committee reviews  and discusses assessment data on a regular basis. Assessment data was also  presented and discussed at the MPA Advisory Board meeting in April 2019. We  continue to meet or exceed expectations in all 5 SLOs.&nbsp; </p><p style="text-align: justify;">&nbsp;</p><p>        </p><p style="text-align: justify;">While we find the existing data  to be highly useful and we are encouraged by the fact we were recently  reaccredited (through 2026) with our current assessment model, we also question  if these measures fully address our desired learning outcomes.&nbsp; Our measures rely heavily on the capstone  project.&nbsp; These projects cover a wide  range of topics and methodologies, and therefore may fit with some SLOs more  than others. After consulting the MPA advisory committee in April 2019, we are now  exploring the idea of adding a portfolio component. The MPA committee is in the  beginning stages of this process.</p>	334
22	<p style="text-align: justify;">The MPA Program Committee reviews  and discusses assessment data on a regular basis. Assessment data was also  presented and discussed at the MPA Advisory Board meeting in April 2019. We  continue to meet or exceed expectations in all 5 SLOs.&nbsp; </p><p style="text-align: justify;">&nbsp;</p><p>        </p><p style="text-align: justify;">While we find the existing data  to be highly useful and we are encouraged by the fact we were recently  reaccredited (through 2026) with our current assessment model, we also question  if these measures fully address our desired learning outcomes.&nbsp; Our measures rely heavily on the capstone  project.&nbsp; These projects cover a wide  range of topics and methodologies, and therefore may fit with some SLOs more  than others. After consulting the MPA advisory committee in April 2019, we are now  exploring the idea of adding a portfolio component. The MPA committee is in the  beginning stages of this process.</p>	335
23	<p style="text-align: justify;">The MPA Program Committee reviews  and discusses assessment data on a regular basis. Assessment data was also  presented and discussed at the MPA Advisory Board meeting in April 2019. We  continue to meet or exceed expectations in all 5 SLOs.&nbsp; </p><p style="text-align: justify;">&nbsp;</p><p>        </p><p style="text-align: justify;">While we find the existing data  to be highly useful and we are encouraged by the fact we were recently  reaccredited (through 2026) with our current assessment model, we also question  if these measures fully address our desired learning outcomes.&nbsp; Our measures rely heavily on the capstone  project.&nbsp; These projects cover a wide  range of topics and methodologies, and therefore may fit with some SLOs more  than others. After consulting the MPA advisory committee in April 2019, we are now  exploring the idea of adding a portfolio component. The MPA committee is in the  beginning stages of this process.</p>	336
28	<p>Decisions.</p>	341
29	<p>Decisions.</p>	342
30	<p>Keep an eye of the tech!</p>	331
31	<p>Decisions and Actions.</p>	343
32	<p>For SLO 1, the program...</p>	345
33	<p>For SLO 2, the program...</p>	346
34	<p>For SLO 1, the program...</p>	347
35	<p>For SLO 2, the program...</p>	348
\.


--
-- Data for Name: makeReports_degreeprogram; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_degreeprogram" (id, name, level, cycle, department_id, "startingYear", active, accredited) FROM stdin;
1	BSGE Gerontology	UG	\N	3	\N	t	f
2	Computer Science	UG	3	1	2020	t	f
3	MS in Computer Science	GR	3	1	2020	t	f
4	Software Engineering	UG	3	1	2020	t	f
5	BA Economics	UG	\N	5	\N	t	f
6	BS Economics	UG	\N	5	\N	t	f
7	BS General Science	UG	\N	5	\N	t	f
8	BA Interdisciplinary Studies	UG	\N	5	\N	t	f
9	BS Interdisciplinary Studies	UG	\N	5	\N	t	f
10	BS Black Studies	UG	\N	4	\N	t	f
11	MA English	GR	\N	6	\N	t	f
12	BS Environmental Studies	UG	\N	7	\N	t	f
13	BA Foreign Languages & Literature	UG	\N	8	\N	t	f
14	MA Language Teaching	GR	\N	8	\N	t	f
15	BA Geography	UG	\N	9	\N	t	f
16	BS Geography	UG	\N	9	\N	t	f
17	BA Mathematics	UG	\N	10	\N	t	f
18	BS Mathematics	UG	\N	10	\N	t	f
19	MA Mathematics	GR	\N	10	\N	t	f
20	MS Mathematics	GR	\N	10	\N	t	f
21	MTM Mathematics	GR	\N	10	\N	t	f
22	MS Applied Behavioral Analysis	GR	\N	2	\N	t	f
23	BA Psychology	UG	\N	2	\N	t	f
24	BS Psychology	UG	\N	2	\N	t	f
25	MA Psychology	GR	\N	2	\N	t	f
26	PhD Psychology	GR	\N	2	\N	t	f
27	MS Industrial/Organizational Psychology	GR	\N	2	\N	t	f
28	MS School Psychology	GR	\N	2	\N	t	f
29	EDS School Psychology	GR	\N	2	\N	t	f
30	BIS Management Information Systems	UG	\N	11	\N	t	f
31	BCCJ Criminology & Criminal Justice	UG	\N	12	\N	t	f
32	MA Criminology & Criminal Justice	GR	\N	12	\N	t	f
33	MS Criminology & Criminal Justice	GR	\N	12	\N	t	f
34	PhD Criminology & Criminal Justice	GR	\N	12	\N	t	f
35	BMS Multidisciplinary Studies	UG	\N	13	\N	t	f
36	BSEM Emergency Management	UG	\N	14	\N	t	f
37	PhD Public Administration	GR	\N	14	\N	t	f
38	MS Urban Studies	GR	\N	14	\N	t	f
39	BS Biomechanics	UG	\N	15	\N	t	f
40	MS Counseling	GR	\N	16	\N	t	f
41	MS Educational Leadership	GR	\N	17	\N	t	f
42	EDD Educational Administration & Supervision	GR	\N	17	\N	t	f
43	EDS Educational Administration & Supervision	GR	\N	17	\N	t	f
44	MA Athletic Training	GR	\N	18	\N	t	f
45	BSED Kinesiology	UG	\N	18	\N	t	f
46	MS Health & Kinesiology	GR	\N	18	\N	t	f
47	PhD Exercise Science	GR	\N	18	\N	t	f
48	BSED Elementary Education, Special Education	UG	\N	19	\N	t	f
49	BSED Secondary Education, Special Education	UG	\N	19	\N	t	f
50	MA Special Education	GR	\N	19	\N	t	f
51	MS Special Education	GR	\N	19	\N	t	f
52	BSED Communication Disorders	UG	\N	19	\N	t	f
53	MS Speech-Language Pathology	GR	\N	19	\N	t	f
54	BSED Early Childhood Exclusive	UG	\N	20	\N	t	f
55	BSED Elementary Education	UG	\N	21	\N	t	f
56	MS Elementary Education	GR	\N	21	\N	t	f
57	BSED Secondary Education	UG	\N	21	\N	t	f
58	MS Secondary Education	GR	\N	21	\N	t	f
59	BSED Library Science	UG	\N	21	\N	t	f
60	MS Literacy	GR	\N	21	\N	t	f
61	BAH Art History	UG	\N	22	\N	t	f
62	BFA Creative Writing	UG	\N	22	\N	t	f
63	BFA Studio Art	UG	\N	22	\N	t	f
64	BSA Studio Art	UG	\N	22	\N	t	f
65	BTH Theatre	UG	\N	22	\N	t	f
66	MA Communication	GR	\N	23	\N	t	f
67	BAC Communication Studies	UG	\N	23	\N	t	f
68	BSC Communication Studies	UG	\N	23	\N	t	f
69	BAC Journalism & Media Communication	UG	\N	23	\N	t	f
70	BSC Journalism & Media Communication	UG	\N	23	\N	t	f
71	BM Music Education	UG	\N	24	\N	t	f
72	BM Music Performance	UG	\N	24	\N	t	f
74	MM Music - Music Ed	GR	\N	24	\N	t	f
75	MM Music - Music Perf/Cond	GR	\N	24	\N	t	f
76	MS Data Science	GR	\N	25	\N	t	f
73	BAM Music Jazz	UG	\N	24	\N	t	f
77	Artificial Intelligence	GR	3	1	2020	t	t
78	MPA Public Administration	GR	\N	14	\N	t	t
80	MA Non-Accredited Test	GR	\N	26	\N	t	f
81	MA Accredited Test	GR	\N	26	\N	t	t
79	MA Test Program	GR	\N	26	\N	t	t
82	BA Accredited Test	UG	\N	26	\N	t	t
83	BA Non-Accredited Test	UG	\N	26	\N	t	f
\.


--
-- Data for Name: makeReports_department; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_department" (id, name, college_id, active) FROM stdin;
1	Computer Science	1	t
2	Psychology	2	t
3	Gerontology	3	t
4	Black Studies	2	t
5	A&S Dean's Office	2	t
6	English	2	t
7	Environmental Studies	2	t
8	Foreign Languages/Literature	2	t
9	Geography/Geology	2	t
10	Mathematics	2	t
11	ISQA	1	t
12	Criminology & Criminal Justice	3	t
13	Division of Continuing Studies	3	t
14	Public Administration	3	t
15	Biomechanics	6	t
16	Counseling	6	t
17	Educational Leadership	6	t
18	Health & Kinesiology	6	t
19	SpecEd/CommDisorders	6	t
20	SpecEd/CommDisorders/TED	6	t
21	Teacher Education	6	t
22	Arts	5	t
23	Communication	5	t
24	Music	5	t
25	Multiple	7	t
26	Test	8	t
\.


--
-- Data for Name: makeReports_gradedrubric; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_gradedrubric" (id, "rubricVersion_id", "generalComment", "section1Comment", "section2Comment", "section3Comment", "section4Comment", complete) FROM stdin;
1	4	\N	\N	\N	\N	\N	f
2	4	\N	\N	\N	\N	\N	f
3	5	\N	\N	\N	\N	\N	f
4	5	<p>No comments.</p>	<p>Good SLO</p>				f
5	4	\N	\N	\N	\N	\N	f
6	4	\N	\N	\N	\N	\N	f
7	4	\N	\N	\N	\N	\N	f
8	4	\N	\N	\N	\N	\N	f
9	4	\N	\N	\N	\N	\N	f
10	4	\N	\N	\N	\N	\N	f
11	4	\N	\N	\N	\N	\N	f
13	4	\N	\N	\N	\N	\N	f
14	4	\N	\N	\N	\N	\N	f
15	4	\N	\N	\N	\N	\N	f
16	4	\N	\N	\N	\N	\N	f
17	4	\N	\N	\N	\N	\N	f
18	4	\N	\N	\N	\N	\N	f
19	4	\N	\N	\N	\N	\N	f
20	4	\N	\N	\N	\N	\N	f
21	4	\N	\N	\N	\N	\N	f
22	4	\N	\N	\N	\N	\N	f
23	4	\N	\N	\N	\N	\N	f
24	4	\N	\N	\N	\N	\N	f
25	4	\N	\N	\N	\N	\N	f
26	4	\N	\N	\N	\N	\N	f
27	4	\N	\N	\N	\N	\N	f
28	4	\N	\N	\N	\N	\N	f
29	4	\N	\N	\N	\N	\N	f
30	4	\N	\N	\N	\N	\N	f
31	4	\N	\N	\N	\N	\N	f
32	4	\N	\N	\N	\N	\N	f
33	4	\N	\N	\N	\N	\N	f
34	4	\N	\N	\N	\N	\N	f
35	4	\N	\N	\N	\N	\N	f
36	4	\N	\N	\N	\N	\N	f
37	4	\N	\N	\N	\N	\N	f
38	4	\N	\N	\N	\N	\N	f
39	4	\N	\N	\N	\N	\N	f
40	4	\N	\N	\N	\N	\N	f
41	4	\N	\N	\N	\N	\N	f
42	4	\N	\N	\N	\N	\N	f
43	4	\N	\N	\N	\N	\N	f
44	4	\N	\N	\N	\N	\N	f
45	4	\N	\N	\N	\N	\N	f
46	4	\N	\N	\N	\N	\N	f
47	4	\N	\N	\N	\N	\N	f
48	4	\N	\N	\N	\N	\N	f
49	4	\N	\N	\N	\N	\N	f
50	4	\N	\N	\N	\N	\N	f
51	4	\N	\N	\N	\N	\N	f
52	4	\N	\N	\N	\N	\N	f
53	4	\N	\N	\N	\N	\N	f
54	4	\N	\N	\N	\N	\N	f
55	4	\N	\N	\N	\N	\N	f
56	4	\N	\N	\N	\N	\N	f
57	4	\N	\N	\N	\N	\N	f
58	4	\N	\N	\N	\N	\N	f
59	4	\N	\N	\N	\N	\N	f
60	4	\N	\N	\N	\N	\N	f
61	4	\N	\N	\N	\N	\N	f
62	4	\N	\N	\N	\N	\N	f
63	4	\N	\N	\N	\N	\N	f
64	4	\N	\N	\N	\N	\N	f
65	4	\N	\N	\N	\N	\N	f
66	4	\N	\N	\N	\N	\N	f
67	4	\N	\N	\N	\N	\N	f
68	5	\N	\N	\N	\N	\N	f
69	4	\N	\N	\N	\N	\N	f
70	5	\N	\N	\N	\N	\N	f
71	5	\N	\N	\N	\N	\N	f
72	5	\N	\N	\N	\N	\N	f
73	5	\N	\N	\N	\N	\N	f
75	5	\N	\N	\N	\N	\N	f
76	4	\N	\N	\N	\N	\N	f
77	5	\N	\N	\N	\N	\N	f
80	4	\N	\N	\N	\N	\N	f
81	5	\N	\N	\N	\N	\N	f
74	5	\N					f
79	4	<p>Overall, the program...</p>	<p>Type additional comments here...</p>	<p>Type additional comments here...</p>	<p>Additional comments here...</p>	<p>Additional comments here...</p>	f
78	5	\N	<p>Additional comments here...</p>	<p>Additional comments here...</p>	<p>Additional comments here...</p>	<p>Additional comments here...</p>	f
82	5	\N	\N	\N	\N	\N	f
12	4	\N		\N	\N	\N	f
\.


--
-- Data for Name: makeReports_gradedrubricitem; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_gradedrubricitem" (id, grade, item_id, rubric_id) FROM stdin;
1	ME	2	4
2	ME	3	4
3	ME	1	79
4	ME	4	79
5	ME	5	79
6	ME	6	79
8	ME	7	79
7	ME	8	79
9	ME	9	79
10	ME	10	79
11	ME	11	79
12	ME	12	79
13	ME	13	79
14	ME	14	79
15	ME	2	78
16	ME	3	78
17	ME	15	78
18	ME	16	78
\.


--
-- Data for Name: makeReports_gradgoal; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_gradgoal" (id, text, active) FROM stdin;
1	<p>1. Mastery of discipline content.<br></p>	t
2	<p>2. Proficiency in analyzing, evaluating, &amp; synthesizing information.<br></p>	t
5	<p>3. Effective oral &amp; written communication.<br></p>	t
3	<p>4. Knowledge of discipline's ethics &amp; standards.<br></p>	t
4	<p>Not applicable for SLO<br></p>	t
\.


--
-- Data for Name: makeReports_graph; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_graph" (id, "dateTime", graph) FROM stdin;
1	2020-09-28 14:22:25.585352+00	graph-csfaculty-2020-09-28_142225.593531.png
\.


--
-- Data for Name: makeReports_profile; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_profile" (id, aac, department_id, user_id) FROM stdin;
2	t	1	2
7	f	9	7
8	f	26	8
9	t	26	9
10	f	1	10
4	t	3	4
3	t	2	3
6	t	26	6
5	f	1	5
1	t	\N	1
11	t	1	11
12	f	1	12
\.


--
-- Data for Name: makeReports_report; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_report" (id, author, "section1Comment", "section2Comment", "section3Comment", "section4Comment", submitted, "degreeProgram_id", rubric_id, year, returned, date_range_of_reported_data, "numberOfSLOs", accredited) FROM stdin;
21	Elizabeth Leader-Janssen & Kristine Swain	<p>BSED Secondary Education, Special Education report is the same as the BSED Elementary Education, Special Education report. Refer to BSED Elementary Education, Special Education report for more information.</p><p><span style="line-height: 107%;">NCATE and CAEP accreditors require all teacher  candidates enrolled in educator preparation programs, regardless of major, be  assessed using the same measures.&nbsp; As a  result the BS in Special Education, Elementary Education and BS in Special  Education, Secondary Education use the same measures:&nbsp; Clinical Practice Evaluation, Strategies  Project, and Praxis II Examination.&nbsp;</span><br></p>	\N	\N	\N	f	49	21	2019	f	2017-2018	4	f
33	Dr. Hans M. Louis-Charles	\N	<p><span style="line-height: 107%;">All students are required to participate in an Internship before  graduation. Often students combine their internship experience with the tasks  connected to SLO 2 &amp; SLO 4. This is a mutually beneficial experience to  their internship provider as they are able to conduct research in a pertinent  area and helps improve their research paper and presentations. Students that  perform well in their internship (pass/fail) often surpass SLO proficiency  threshold.&nbsp; &nbsp;</span></p>	\N	\N	f	36	33	2019	f	Fall 2017-Spring 2018	4	f
40	Karen Fannin	\N	The post-graduation survey indicates that students in the BM Performance concentration are generally&nbsp;<span style="">satisfied (ratings 4.0 or above) with the opportunities they have for student/faculty interaction (4.56/5),&nbsp;</span><span style="">opportunities for student involvement in campus activities (4.13). They are less satisfied with the&nbsp;</span><span style="">general condition of the grounds (3.22), quality of program in major field (3.33), and preparation for&nbsp;</span><span style="">further study. We have addressed these aspects with our building renovation and addition, scheduled&nbsp;</span><span style="">for completion Spring 2019, as well as new faculty hires who teach our core classes (music history and&nbsp;</span><span style="">music theory).</span><br>In terms of graduates’ rating of specific areas, they rate their ability to write clearly and effectively as&nbsp;<span style="">2.56/4. They rate their skills in thinking critically and analytically as 2.44/4. Their lowest rating is in&nbsp;</span><span style="">analyzing numerical and statistical information as 2/4, but this skill is not assessed in the music degree&nbsp;</span><span style="">and expected as a competency. Graduates rate working effectively with others the highest (3.0/4).</span>	\N	\N	f	72	40	2019	f	2015-2018	4	f
42	Lisa Sample	\N	We currently use no indirect measures, but a survey is being developed to inquire about employment, military service, and other indicators requested by ranking organizations such as U.S. News and World Report.	\N	\N	f	32	42	2019	f	2017-18	5	f
46	Kathy Danielson & Connie Schaffer	<p style="margin-right: 0in; margin-left: .25in; line-height: normal;"><span style="">NOTE: The  term “teachers” refers to the TED graduate students enrolled in the program.  The term “students” refers to the learners with whom the ‘teacher’ (UNO  graduate student) interacts such as a child enrolled in a P-12 school.</span></p>	<p>The TED Literacy Graduate Committee reviewed UNO Graduation  Survey Data for 2016-17 and for 2017-18.&nbsp;  In addition, the program is working with other graduate programs within  the College of Education to develop an alumni and employer survey.&nbsp; The survey is being piloted and the program  hopes to implement it in 2019.&nbsp;</p>	\N	\N	f	60	46	2019	f	2015-2018	5	f
4	Harvey Siy	\N	\N	\N	\N	f	4	4	2020	t	2019-2020	1	f
2	Julie Blaskewicz Boron	\N	\N	\N	<span style="line-height: 115%;">A new person has taken over the practicum, effective  Spring 2020. The assessment coordinator will work with this individual to  improve assessment efforts, as the new practicum coordinator expressed desire  to modify our rubrics and evaluation reports.</span>	t	1	2	2020	f	Spring 2018-Fall 2019	4	f
36	Paige Toller	The BSC report is same as the BAC report. Refer to the BAC report for further information.	\N	\N	\N	f	68	36	2018	f	2015-16 AY 2016-17 AY	5	f
34	Peter Wolcott	\N	<p>The program periodically convenes student focus groups,  annually solicits input from the Curriculum Advisory Committee, reviews DFW  data from the Office of Institutional Research, and conducts curriculum  benchmarks.</p>	\N	\N	f	30	34	2019	f	AY 2017/18	8	f
55	Tami Williams	\N	\N	\N	\N	f	41	55	2019	f	2017 - current as available	4	f
37	Sherrie Wilson, Melodae Morris, Andrea Weare, Chris Allen & Jodeane Brownlee	\N	<p>Each semester (fall, spring and summer), internship  providers are asked to evaluate students working for them as part of our  Internship Experience (JMC/CMST 4970) and Applied Journalism/Broadcasting (JMC  3970) courses. The Applied Journalism class involves working at campus media.&nbsp; The public relations and advertising capstone  operates as an agency completing pro-bono work for non-profit organizations. At  the end of each semester and Quality of Service survey is sent to clients to  provide feedback and evaluation of the student work product, communication and  interactions.</p>	\N	\N	f	69	37	2019	f	Spring 2018	5	f
59	Andrew W Swift	\N	\N	\N	\N	f	20	59	2019	f	2016-2018	4	f
38	Sherrie Wilson, Melodae Morris, Andrea Weare, Chris Allen & Jodeane Brownlee	The BSC report is the same as the BAC report. See BAC report for further information.	\N	\N	\N	f	70	38	2019	f	Spring 2018	5	f
39	Karen Fannin	\N	The post-graduation survey indicates that students are generally satisfied (ratings 4.0 or above) with the&nbsp;<span style="">variety of courses offered and opportunities for students. Students rated the condition of the building and&nbsp;</span><span style="">grounds 3.40/5 and the quality of the program in their major field/instruction at 3.6/5. These areas have&nbsp;</span><span style="">been addressed with new faculty (hires for 2019-20 and 2016-17), and the addition and renovation of our&nbsp;</span><span style="">building, scheduled for completion spring 2019. Students in the BM Music Education concentration may&nbsp;</span><span style="">be more critical of their educational setting because their core music education classes continually ask&nbsp;</span><span style="">them to reflect on their instruction.</span><br>In terms of graduates’ rating of specific areas, they rate their ability to write clearly and effectively as&nbsp;<span style="">2.6/4. They rate their skills in thinking critically and analytically as 2.9/4. Their lowest rating is in analyzing&nbsp;</span><span style="">numerical and statistical information as 2.1/4, but this skill is not assessed in the music degree and&nbsp;</span><span style="">expected as a competency. Graduates rate working effectively with others the highest (3.2/4).</span>	\N	\N	f	71	39	2019	f	2015-2018	5	f
60	Michael Matthews	\N	\N	\N	\N	f	21	60	2019	f	2018	4	f
3	Faculty Siy	\N	\N	\N	\N	f	3	3	2020	f	2019-2020	2	t
1	Faculty Siy	\N	\N	\N	\N	f	2	1	2020	f	2019-2020	3	f
5	Randy Adkins & Ben Smith	\N	<p><span style="line-height: 107%;">Program Proficiency Target for SLO's 1-6 Explanation:&nbsp;<i>In  the long-run, we will use the time-trend as a benchmark.&nbsp; The questions were written by the instructors  and thus there is no national-norm available for comparison purposes.&nbsp; In the short-run we will use the average </i></span><span style=""><img></span><i><span style="line-height: 107%;">&nbsp;values from the Test of Understanding College  Economics (TUCE), a nationally-normed principles level exam (this average is  21% for microeconomics).&nbsp;&nbsp;</span></i></p><p>Indirect Data:&nbsp;<i style=""><span style="">Intermediate  micro and macro build on concepts first introduced in the principles of micro-  and macroeconomics.&nbsp; Using an identical  method (but principles level questions), we assess every section of principles  of micro- and macroeconomics.&nbsp; Therefore,  if there was a problem with our ‘feeder’ classes we would see it in this data.</span></i></p><p style="line-height: normal;"><i><span style=""></span></i></p>	\N	<p style="text-align: justify;"><b><i>NOTE: </i></b><i>The Department of Economics uses all data to  make decisions, not just those from Arts and Sciences.&nbsp; This is done for two reasons: there is little  difference in the treatment across the two degree programs and the observations  from Arts and Sciences students alone are insufficient for decision  making.&nbsp; The Arts and Sciences and  College of Business concentration are nearly identical in their economics  training.&nbsp; The differences in the degrees  come in the non-economics courses (e.g. CBA students might take accounting,  where A&amp;S students might take political science).&nbsp; Therefore, we are measuring the same  treatment (economics classes) across all students.</i></p>    <p style="text-align: justify;"><i>Secondly, five or seven observations is insufficient for analysis or  decision making.&nbsp; The 90% critical value  on the five question SLOs with five and seven observations is 21% and 17%,  respectively (see the critical value tables in Smith and Wagner (2018), table  A1, online appendix).&nbsp; These critical  values decrease to 8% with 16 observations and about 7% for 21 to 23  observations.&nbsp; We use all students  available in each section of ECON 3200 and 3220; there are no additional  observations to be had in any given time period.&nbsp; Aggregating across time is possible, but the  treatments are no longer identical, and it delays continuous improvement.</i></p>	t	5	5	2019	f	2016-2018	7	f
19	Dr. Mike Messerole, Kelsey Blunck, Jessica Baldwin	\N	\N	\N	\N	f	45	19	2019	f	2016-2018	4	f
18	Dr. Brian Knarr, Dr. Amelia Lanier, Ms. Laura Rotert	\N	\N	\N	\N	f	39	18	2019	f	Fall 2017, Spring 2018, Summer 2018, Fall 2018	4	f
6	Randy Adkins	\N	\N	<p style="line-height: normal;"><i><span style="">At this time there is no data collection or analysis to report.&nbsp; The draft of the master syllabus for GSCI  4990 (see description above) needs to be entered into the new CourseLeaf  system, and go through the normal campus approval process for new courses.&nbsp; As that is completed, the curriculum will be  revised to include GSCI 4990 as a required course to be taken in the final year  of the program.&nbsp; The course should be  offered for the first time in the Fall of 2018 and data collected form the  students will be analyzes shortly thereafter.&nbsp;  Currently, there are 20 students enrolled full- or part-time in the  General Science major.&nbsp; Of that number,  only two have accumulated more than 90 credit hours.&nbsp;&nbsp;</span></i></p>	\N	t	7	6	2018	f	NA	3	f
14	Michael Matthews	\N	<p>SLO 1:&nbsp;<b style=""><span style="line-height: 115%;">Rating  Collected Student Written Works—Constructing Mathematical Arguments</span></b></p><p><b style=""><span style="line-height: 115%;">Where does the assessment occur further information:</span></b></p><p><b>For the first  academic coordinator (currently Michael Matthews):</b><b><span style="line-height: 115%;"></span></b></p><p>Computational Mathematics:&nbsp;  Math 3230 -Intro To Analysis</p><p>Math. Ed.:&nbsp;&nbsp;&nbsp; Math  3230 -Intro To Analysis</p><p>Research Experience: Math 3230 -Intro To Analysis</p><p>Majors with no area of conc.:&nbsp; Math 3230- Intro To Analysis</p><p><b>For the second  academic coordinator (currently Slava Rykov):</b></p><p>Operations Research:&nbsp; Math  4756 - Intro to Probability and Statistics I</p><p>Data Science:&nbsp; Math  4756 - Intro to Probability and Statistics I</p><p>Pre-Actuarial Science: Math 4740 - Intro to Probability and  Statistics I</p><p>                                    </p><p>Statisitcs:&nbsp;&nbsp;&nbsp; Math  4756 - Intro to Probability and Statistics I</p><p>SLO 3:&nbsp;<b style=""><span style="line-height: 115%;">Rating  Collected Student Written Works-Overall Comprehension</span></b></p><p><b style=""><span style="line-height: 115%;">Frequency of Data Collection:&nbsp;</span></b><span style="">The frequency will  depend on the core area. It will be at least once a year as discussed in point  5 above. It will be done each time the courses listed above are offered. For  some courses, this is every semester. For other courses, it is once a year.</span></p><p style="line-height: normal;"><span style=""></span></p>	\N	\N	f	17	14	2019	f	F2018	3	f
15	Michael Matthews	BS report same as BA report. Refer to BA report for further information.	\N	\N	\N	f	18	15	2019	f	F2018	3	f
44	Todd Armstrong	\N	<p>All eight Ph.D. program completers during the 2017/2018  assessment cycle were successful in securing positions as tenure track  assistant professors. Securing tenure track assistant professor positions  indicates proficiency across all of the SLOs.&nbsp;</p>	\N	\N	f	34	44	2019	f	\N	5	f
41	Dr. Robert Blair	\N	\N	\N	\N	f	38	41	2019	f	2017-2018	3	f
10	Patrice J. Proulx, Tatyana Novikov, Cecilia Tocaimaza-Hatch	<p>SPANISH 4030 - Advanced Conversation SLOs 1-4</p><p>SPANISH 4040- Composition SLOs 5-8</p>	\N	\N	\N	f	13	10	2019	f	AY 2018	8	f
7	Randy Adkins	The BS Economics report is the same as the BA Economics report. Refer to the BA Economics report for information	\N	\N	\N	f	6	7	2018	f	2016-2018	7	f
9	John P. McCarty	\N	<p>SLO 2:&nbsp;<span style="line-height: 107%;">Evaluation  of the intern written by the internship sponsor.</span></p><p><span style="line-height: 107%;">Proficiency target further explained:&nbsp;</span><span style="">The  target is for 80% of students to receive a positive evaluation from their  sponsor and for 90% of sponsors to report that they would be willing to  consider another intern from UNO.</span></p><p><br></p><p>Indirect data:&nbsp;<span style="">The assessments above were supplemented with graduates’  self-assessments as derived from the UNO GradSurvey from 2016-2017.&nbsp;</span></p><p></p>	\N	\N	f	12	9	2019	f	Jan-Dec 2018	6	f
13	Rex Cammack	BS report is same as BA report. Refer to BA report for further information.	\N	\N	\N	f	16	13	2021	f	2017-2019	2	f
62	Joseph Brown	\N	\N	\N	\N	f	25	62	2019	f	1/2018-12/2018	3	f
63	Joseph S Brown	\N	\N	\N	\N	f	26	63	2019	f	1/1/18-12/31/18	3	f
20	Elizabeth Leader-Janssen & Kristine Swain	\N	<span style="line-height: 107%;">NCATE and CAEP accreditors require all teacher  candidates enrolled in educator preparation programs, regardless of major, be  assessed using the same measures.&nbsp; As a  result the BS in Special Education, Elementary Education and BS in Special  Education, Secondary Education use the same measures:&nbsp; Clinical Practice Evaluation, Strategies  Project, and Praxis II Examination.&nbsp;</span>	\N	\N	f	48	20	2019	f	2017-2018	4	f
22	Kathy L Coufal	\N	\N	\N	\N	f	52	22	2019	f	Spring 2018	3	f
12	Rex Cammack	\N	\N	\N	\N	t	15	12	2021	t	2017-2019	2	f
26	Melissa Cast-Brede & Erica Rose	\N	<p>The UNO Undergraduate Graduation Survey (2016-2018) provides  additional support.&nbsp; </p>    <p style=""><span style="">·<span style="line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></span>SLO #1: Q2c and Q2h results indicate strong  student satisfaction regarding the program’s ability to foster professional  preparedness in relation to the utilization of technological innovations.</p>    <p style=""><span style="">·<span style="line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></span>SLO #2: Q2f, Q2j, Q4f results indicate strong  student satisfaction regarding the program’s ability to foster professional  preparedness in relation to multicultural topics and issues related to  diversity.</p>    <p style=""><span style="">·<span style="line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></span>SLO #3:&nbsp;  Q2h and Q4c results indicate strong student satisfaction regarding the  program’s ability to foster professional preparedness and the analytical skills  necessary for addressing challenges of rapidly changing information  environments.</p>	\N	\N	f	59	26	2019	f	2017-2018	3	f
23	Kris Swain, Sarah Edwards, Debora Wisneski, Connie Schaffer	<p style="line-height: normal;"><span style="">The  Student Learning Outcomes represent the four general categories of the  Interstate Teacher Assessment and Support Consortium (InTASC) Standards as  established by the Council of Chief State School Officers. The InTASC Standards  are the criteria for Standard One and are also represented in Standard Three of  the Council of Accreditation of Educator Preparation (CAEP) as well as Standard  One of the former National Council for Accreditation of Teachers  Educators.&nbsp; The educator preparation  programs within the College of Education are currently accredited through NCATE  and will be seeking CAEP accreditation in the next accreditation review.&nbsp; Each of the four general InTASC categories  has two or more subscales for a total of 10 InTASC Standards.&nbsp;</span></p>	<p><span style="line-height: 107%;">NCATE and CAEP accreditors require all teacher  candidates enrolled in educator preparation programs, regardless of major, be  assessed using the same measures.&nbsp; As a  result the BS in Elementary Education, BS in Secondary Education, BS in Early  Childhood Inclusive Education, BS in Elementary Special Education, and BS in  Secondary Education (other degree programs in TED and SPED) use the same  measures:&nbsp; Clinical Practice Evaluation,  Strategies Project, and Praxis II Examination.&nbsp;  The Praxis II Examination is taken by all teacher candidates, but  candidates take unique versions of the examination based on their major and/or  endorsement (subject) areas.</span></p><p><br></p>	\N	\N	f	54	23	2019	f	2017-18	4	f
24	Connie Schaffer & Sarah Edwards	<p style="line-height: normal;"><span style="">The  Student Learning Outcomes represent the four general categories of the  Interstate Teacher Assessment and Support Consortium (InTASC) Standards as  established by the Council of Chief State School Officers. The InTASC Standards  are the criteria for Standard One and are also represented in Standard Three of  the Council of Accreditation of Educator Preparation (CAEP) as well as Standard  One of the former of the National Council for Accreditation of Teachers  Educators (NCATE).&nbsp; The educator  preparation programs within the College of Education are currently accredited  through NCATE and will be seeking CAEP accreditation in the next accreditation  review.&nbsp; Each of the four general InTASC  categories has two or more subscales for a total of 10 InTASC Standards.&nbsp;</span></p>	<span style="line-height: 107%;">NCATE and CAEP accreditors require all teacher  candidates enrolled in educator preparation programs, regardless of major, be  assessed using the same measures.&nbsp; As a  result the BS in Elementary Education and BS in Secondary Education use the  same measures:&nbsp; Clinical Practice  Evaluation, Strategies Project, and Praxis II Examination.&nbsp; The Praxis II Examination is taken by all  teacher candidates but candidates take unique versions of the examination based  on their major and/or endorsement (subject) areas.&nbsp;</span>	\N	\N	f	55	24	2019	f	2015-2018	4	f
25	Connie Schaffer & Sarah Edwards	<p style="line-height: normal;">The  Student Learning Outcomes represent the four general categories of the  Interstate Teacher Assessment and Support Consortium (InTASC) Standards as  established by the Council of Chief State School Officers. The InTASC Standards  are the criteria for Standard One and are also represented in Standard Three of  the Council of Accreditation of Educator Preparation (CAEP) as well as Standard  One of the former of the National Council for Accreditation of Teachers  Educators (NCATE).&nbsp; The educator  preparation programs within the College of Education are currently accredited  through NCATE and will be seeking CAEP accreditation in the next accreditation  review.&nbsp; Each of the four general InTASC  categories has two or more subscales for a total of 10 InTASC Standards.&nbsp;</p>	\N	\N	\N	f	57	25	2019	f	2015-2018	4	f
35	Paige Toller	\N	\N	\N	\N	f	67	35	2018	f	Spring 20182015-16 AY 2016-17 AY	5	f
27	Adrian Duran	\N	\N	\N	\N	f	61	27	2019	f	Jan-Dec 2018	3	f
29	Russ Nordman	\N	\N	\N	\N	f	63	29	2019	f	Jan – Dec 2018	3	f
28	Miles Waggener	\N	<p>SLO 1:&nbsp;<span style="line-height: 107%;">This  data was gathered once in Anna Monardo’s Spring 18 2100/3100 class, and once in  Fall 18 in Kevin Clouther’s 3100 class.&nbsp;&nbsp;</span></p><p><span style="line-height: 107%;"></span></p><p>Graduation survey from December 2016-August 2018 collected  data from 28 graduates.&nbsp;&nbsp;</p>	\N	\N	f	62	28	2019	f	Spring 18-Fall 18	4	f
43	Lisa Sample	The MS report is the same as the MA report. Refer to the MA report for further information.	\N	\N	\N	f	33	43	2019	f	2017-18	5	f
31	Steven Williams	\N	<p>Students at all levels are evaluated on their performances  and technical assignments on each of our productions.&nbsp; These productions serve as an extension of  our classrooms and a true testing ground for the student’s ability to exhibit  critical and creative thinking, collaboration, project management, and visual  communication.&nbsp; Time spent in rehearsals  and productions allows students to test their personal understanding and mastery  of these skills.&nbsp; It also serves as a  time for teachers, directors, and mentors to advise on site and in the  moment.&nbsp; If we do find reoccurring themes  of shortcomings or lack of understanding, these issues are then addressed in  the classroom and in our coursework.</p>	\N	\N	f	65	31	2020	f	8.13.19 - 12.20.19	4	f
30	Russ Nordman	The BSA report is the same as the BFA report. Refer to the BFA report for further information.	\N	\N	\N	f	64	30	2019	f	Jan-Dec 2018	3	f
45	Adam W. Tyma	\N	\N	\N	\N	f	66	45	2019	f	Fall 2018	4	f
32	April Paschall	\N	In the 2018-2019 and 2019-2020 assessment cycles there were no indirect measures used. With our curriculum&nbsp;<span style="">update and subsequent changes in program assessment, self-assessment and/or self-reflection will be used to&nbsp;</span><span style="">complement the direct evidence gathered for each of our newly defined SLOs.</span>	\N	\N	f	35	32	2020	f	Fall 2019	3	f
49	Kristine Swain & Elizabeth Leader-Janssen	The MS report is the same as the MA report. Refer to the MA report for further information.	<p>Additional measure:&nbsp; </p>    <p>Praxis II Special Education Content Exam #5354. Graduate  students adding a special education endorsement to their Nebraska teaching  certificate for the first time are required to meet the NDE determined cut  score of 151 for the Praxis II #5354 exam.&nbsp;  During the assessment cycles reported, there was a 100% pass rate for the  11 students who completed the exam with a Mean of 179.56 and a Range of  160-192. </p>    <p>&nbsp;</p>    <p>The UNO Post-Graduation Plans Survey was also analyzed.&nbsp; The results included program graduates from  December 2016- August 2018.</p>	\N	\N	f	50	49	2019	f	2017-2018	7	f
57	Tami Williams	EDS report is same as EDD report. Refer to EDD report for more information.	No comment.	\N	\N	f	43	57	2019	f	2017 - current as available	4	f
47	Becky Pasco & Connie Schaffer	<p style="margin-right: 0in; margin-left: .25in; line-height: normal;"><span style="">NOTE: The  term “teachers” refers to the TED graduate students enrolled in the program.  The term “students” refers to the learners with whom the ‘teacher’ (UNO  graduate student) interacts such as a child enrolled in a P-12 school.</span></p>	<p>The TED Secondary Graduate Committee reviewed UNO Graduation  Survey Data from 2016-17 and 2018-19.&nbsp; In  addition, the program is working with other graduate programs within the  College of Education to develop an alumni and employer survey.&nbsp; The survey is being piloted and the program  hopes to implement it in 2019.&nbsp;</p>	\N	\N	f	58	47	2019	f	2017-2018	5	f
48	Kathy Danielson & Connie Schaffer	<p style="margin-right: 0in; margin-left: .25in; line-height: normal;"><span style="">NOTE: The  term “teachers” refers to the TED graduate students enrolled in the program.  The term “students” refers to the learners with whom the ‘teacher’ (UNO  graduate student) interacts such as a child enrolled in a P-12 school.</span></p>	<p>The TED Elementary Graduate Committee reviewed UNO  Graduation Survey Data from 2016-17 and 2017-2018.&nbsp; In addition, the program is working with  other graduate programs within the College of Education to develop an alumni  and employer survey.&nbsp; The survey is being  piloted and the program hopes to implement it in 2019.&nbsp;</p>	\N	\N	f	56	48	2019	f	2017-2018	5	f
53	Adam Rosen	\N	<p>Retention rate, Employment rate</p>	\N	\N	f	44	53	2019	f	2016-2018	4	f
50	Kristine Swain & Elizabeth Leader-Janssen	MS report same as MA report. Refer to MA report for further information.	<p style="margin-left: 4.5pt;">Students  and program completers were involved in the original creation of the DBDM  project and rubric through a survey that was sent to 11 current students or  program completers in 2017.&nbsp; Five  responses were received and revisions were made to clarify rubric items based  on feedback. </p>    <p style="margin-left: 4.5pt;">&nbsp;</p>    <p style="margin-left: 4.5pt;">Content  validity of the DBDM project was completed through a panel of experts review  during May/June 2018.&nbsp; The DBDM project  information and rubric feedback form was completed by 6 of the 11 special  education leaders who had volunteered to review the project either by  responding at a meeting or to a follow-up email.&nbsp; A Content Validity Index (CVI) of 0.98 was  established through this process.</p>	\N	\N	f	51	50	2019	f	2017-2018	7	f
51	Danae Dinkel	\N	<p><span style="line-height: 107%;">Every year  students complete a portfolio tracking their progress in the program. In this  portfolio, the faculty mentor also provides a recommendation. The Doctoral  Program Committee reviews these to ensure that students are adequately  progressing through the program. Additionally, students are scored and their  ranking is used for distribution of graduate assistantships.&nbsp;</span></p>	\N	\N	f	47	51	2019	f	8/1/16-7/31/18	4	f
52	Dustin Slivka	\N	\N	\N	\N	f	46	52	2019	f	Jan 2018–Dec 2018	4	f
54	Dan Kissinger	\N	<p style="line-height: normal;"><b><span style="">Faculty  have mapped the eight (8) SLOs throughout the program’s courses and developed a  common rubric (attached) for each SLO.&nbsp;  SLOs are assessed across multiple course assignments and within multiple  courses across core and specialization courses (i.e., CMHC/SC). Following each  semester, course instructors review assessment data and complete a course level  assessment (CLA) form. This document is the used to “close the data loop” in  the department’s CACREP-required programmatic assessment plan<span style="color: #0070C0;">.&nbsp;</span></span></b></p>	\N	\N	f	40	54	2019	f	Fall 2017-Fall 2018	8	f
8	G. Travis Adams	\N	\N	\N	\N	f	11	8	2019	f	2015-2019	4	f
58	Andrew W Swift	\N	\N	\N	\N	f	19	58	2019	f	2016-2018	4	f
66	Brian McKevitt	\N	\N	\N	\N	f	29	66	2019	f	2016-2018	11	f
67	Claudia Garcia	\N	\N	\N	\N	f	14	67	2019	f	2013- 2018	3	f
65	Brian McKevitt	\N	<p>Faculty regularly meet to review and discuss student  performance with course work and service learning/field-based work and solicit  feedback from field work supervisors.&nbsp;  Students’ grades are also regularly reviewed. Students must maintain a B  average to remain in the program and cannot have a grade lower than B- for any  course.</p>	\N	\N	f	28	65	2019	f	2016-2018	11	f
61	Mark Shriver	\N	\N	\N	\N	f	22	61	2019	f	Sept 2018 - present	6	f
64	Roni Reiter-Palmon	\N	\N	\N	\N	f	27	64	2019	f	1/1/18-12/31/18	5	f
56	Tami Williams	EDS report is same as EDD report. Refer to EDD report for more information.	\N	\N	\N	f	42	56	2019	f	2017 - current as available	4	f
69	Faculty Siy	\N	\N	\N	\N	t	3	69	2020	f	2019-2020	1	t
75	John Doe	Test.	\N	\N	\N	t	79	75	2022	f	2019-2021	1	t
71	Tara Bryan	\N	\N	\N	\N	t	78	71	2020	f	2018-2020	5	t
70	Faculty Siy	\N	\N	\N	\N	t	77	70	2020	f	2019-2020	1	t
74	Jane Doe	Test Report	\N	\N	\N	t	79	74	2021	f	2019-2021	2	t
77		\N	\N	\N	\N	f	81	77	2021	f	\N	0	f
79	Jane Doe	This report is for both the BA and BS test program.	\N	\N	\N	t	83	79	2021	t	Summer 2019-Fall 2020	2	f
76	Jane Doe	\N	\N	\N	\N	f	80	76	2021	f	Summer 2019-Fall 2020	0	f
80		\N	\N	\N	\N	f	83	80	2019	f	\N	1	f
81		\N	\N	\N	\N	f	82	81	2019	f	\N	1	f
78	Jane Doe	\N	\N	\N	\N	t	82	78	2021	t	Summer 2019-Fall 2020	2	t
82	Faculty Siy	\N	\N	\N	\N	f	77	82	2022	f	2021-2022	2	t
\.


--
-- Data for Name: makeReports_reportsupplement; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_reportsupplement" (id, supplement, report_id) FROM stdin;
1	Gerontology_BSGE_Rubric_Attachments_2019-20.docx	2
2	Economics_BA_Report_Attachments_2017-18.docx	5
3	General_Science_BS_Report_Attachment_2017-18.docx	6
\.


--
-- Data for Name: makeReports_requiredfieldsetting; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_requiredfieldsetting" (id, name, required) FROM stdin;
\.


--
-- Data for Name: makeReports_resultcommunicate; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_resultcommunicate" (id, text, report_id) FROM stdin;
1	<p style="margin-right: 18.75pt; margin-left: 5.6pt;"><span style="">We use the same process for each of our four  SLOs. Results are relayed to the unit once per year in a departmental faculty/staff  meeting where discussion revolves around how to better assess and achieve proficiency  targets for the various SLOs. Further, discussion includes what modifications may  be necessary in courses prior to the practicum course so that students are  better able to achieve proficiency on content-relevant indicators assessed by  our rubrics associated with each SLO. Only our full time faculty teach our  practicum course, thus, the assessment coordinator meets with the practicum  coordinator several times over the academic year (approximately twice per  semester) to touch base regarding practicum and assessment challenges. </span></p><p>    </p><p style="margin-right: 18.75pt; margin-left: 5.6pt;"><span style="">These results are also relayed to our external  advisory board (EAB) at least once per academic year. It is important for us to  get feedback from the EAB regarding their evaluation and suggestions of our  data, as many members of our board are involved with agencies in the community  that are relevant to working with the older adult population. In addition, they  are also abreast of changing prefernces and trends in the field.&nbsp;</span></p>	2
2	<p>CAC meeting<br></p>	4
3	<p><i><span style="line-height: 107%;">SLO 1-6 results are immediately  communicated to the relevant instructors.&nbsp;  Results are then discussed in the annual August faculty meeting.&nbsp;</span></i></p>	5
4	<p style="margin-right: 0in; margin-left: 27.0pt; line-height: normal;"><i><span style="">Results will  be communicated through the General Science Advisory Committee, which is  composed of the department chairs from Biology, Chemistry, Geology, Math, and  Physics.&nbsp; The department chairs can  communicate the results to the faculty (broadly speaking), and the chair of the  committee (currently the Associate Dean) will communicate with the advising  team.</span></i></p>	6
5	<p>This report is given to all the faculty in the department  and the results are presented at a program meeting including all the geography  faculty.&nbsp; Faculty are also directed to  review and products (Geography Posters) produced for SLO 1 each are displayed  within the department (DSC hallways second floor east). During this meeting a  brief review of interviews with students is done and student feedback is  provided to the faculty.&nbsp; &nbsp;</p>	12
6	<p>Results are communicated regularly at the faculty meeting.</p>	69
7	<p>N/A</p>	71
8	<p>SLO 1 and 2 are communicated at...</p>	79
\.


--
-- Data for Name: makeReports_rubric; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_rubric" (id, date, "fullFile", name) FROM stdin;
5	2020-09-28	settings.STATIC_ROOT/norubric.pdf	Rubric 2020-21 Accredited Assessment Rubric
4	2020-08-26	settings.STATIC_ROOT/norubric.pdf	Rubric 2020-21 Non-Accredited Assessment Rubric
\.


--
-- Data for Name: makeReports_rubricitem; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_rubricitem" (id, text, section, "rubricVersion_id", "order", "DMEtext", "EEtext", "MEtext", abbreviation) FROM stdin;
4	<p><span style="color: rgb(33, 37, 41);">Student learning outcomes are&nbsp;</span><i style="color: rgb(33, 37, 41);">observable.</i><br></p>	1	4	\N	<p><span style="color: rgb(33, 37, 41);">SLOs are not observable and not sufficiently defined to allow for observation.&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">All SLOs are observable and sufficiently defined to allow for observation (or reflect external professional standards related to student learning dictated by accreditation body).&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">SLOs are generally observable but clarity is needed to allow for observation.</span><br></p>	
5	<p><span style="color: rgb(33, 37, 41);">Student learning outcomes represent&nbsp;</span><i style="color: rgb(33, 37, 41);">discipline-specific</i><span style="color: rgb(33, 37, 41);">&nbsp;context.</span><br></p>	1	4	\N	<p><span style="color: rgb(33, 37, 41);">SLOs are not presented in a discipline-specific context.&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">SLOs are presented in the context of the discipline (or reflect external professional standards related to student learning dictated by accreditation body).</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Some SLOs include discipline-specific context but others would benefit from additional contextualization.&nbsp;</span><br></p>	
12	<p><span style="color: rgb(33, 37, 41);">Results are&nbsp;</span><i style="color: rgb(33, 37, 41);">communicated</i><span style="color: rgb(33, 37, 41);">&nbsp;within the program.</span><br></p>	3	4	\N	<p><span style="color: rgb(33, 37, 41);">Results of program-level assessments are not communicated to program faculty.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Results are consistently and intentionally communicated to program faculty.&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Results are sporadically communicated to program faculty.&nbsp;</span><br></p>	
3	<p>Assessment methods meet expectations.<br></p>	2	5	\N	<p><span style="color: rgb(33, 37, 41);">The program has not identified measures, the domain of the measures being implemented, and/or a data collection cycle.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Each SLO is assessed by one or more measure identified as a product, performance, or examination. The measures follow a data collection cycle.&nbsp;&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">The program has identified some measures, the domain of the measures being implemented, and/or a data collection cycle.</span><br></p>	
2	<p><span style="color: rgb(33, 37, 41);">Student learning outcomes meet expectations.</span><br></p>	1	5	\N	<p><span style="color: rgb(33, 37, 41);">Program did not identify the cognitive level of each SLO.&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">The program identified the cognitive level of each SLO.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">The program identified the cognitive level for some, but not all SLOs.</span><br></p>	
1	<p>Student learning outcome consist of a <i>single </i>construct whenever possible.</p>	1	4	1	<p>SLOs include more than a single, independent construct.</p>	<p>All SLOs include a single, independent construct (or   reflect professional standards related to student learning as dictated   by accreditation body).</p>	<p>Some SLOs include more than a single, independent construct.</p>	SC
6	<p><span style="color: rgb(33, 37, 41);">Internal and external&nbsp;</span><i style="color: rgb(33, 37, 41);">stakeholders are engaged</i><span style="color: rgb(33, 37, 41);">&nbsp;with student learning outcomes.</span><br></p>	1	4	\N	<p><span style="color: rgb(33, 37, 41);">The program has limited or no systematic means to communicate SLOs or engage with internal stakeholders.&nbsp; SLOs are available on request.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">The program systematically communicates existing SLOs to stakeholders as well as periodically solicits input and feedback from internal and external stakeholders regarding program SLOs.&nbsp; SLOs are publicly available on the program website and published on a variety of program documents, such as recruitment materials, course outlines, or advising documents.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">The program does not solicit input from internal and external stakeholders.&nbsp; The program systematically shares existing SLOs to stakeholders.&nbsp; SLOs are publicly available on the program website and published on a variety of program documents, such as recruitment materials, course outlines, or advising documents.</span><br></p>	
7	<p><span style="color: rgb(33, 37, 41);">Each student learning outcome has at least one&nbsp;</span><i style="color: rgb(33, 37, 41);">direct</i><span style="color: rgb(33, 37, 41);">&nbsp;measure.</span><br></p>	2	4	\N	<p><span style="color: rgb(33, 37, 41);">No direct measures are identified and indirect measures such as course grades, perceptions, or self-evaluations may or may not be identified.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">All SLOs are measured by direct evidence of student knowledge or skills and may be substantiated by indirect means such as course grades, perceptions, or self-evaluations (or measures are dictated by accreditation body).</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Some SLOs are measured by direct evidence of student knowledge or skills and others are measured by indirect means such as course grades, perceptions, or self-evaluations.</span><br></p>	
8	<p><span style="color: rgb(33, 37, 41);">Measures of student learning outcomes are&nbsp;</span><i style="color: rgb(33, 37, 41);">aligned&nbsp;</i><span style="color: rgb(33, 37, 41);">to corresponding SLOs.</span><br></p>	2	4	\N	<p><span style="color: rgb(33, 37, 41);">Measures provide data that does not reflect the constructs represented in the SLOs.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">All measures provide data that reflect the constructs represented in the SLOs (or measures are dictated by accreditation body).</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Some measures provide data that reflect the constructs represented in the SLOs.</span><br></p>	
9	<p><span style="color: rgb(33, 37, 41);">Data are&nbsp;</span><i style="color: rgb(33, 37, 41);">regularly collected</i><span style="color: rgb(33, 37, 41);">&nbsp;against the measures (at least annually).</span><br></p>	3	4	\N	<p><span style="color: rgb(33, 37, 41);">Data have not been collected or have been collected sporadically. Plans for on-going, systematic collection have not been outlined.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Data collection is routine. Plans for systematic collection are operationalized.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Data collection is sporadic and/or plans for on-going, systematic collection have been outlined.&nbsp;</span><br></p>	
10	<p><span style="color: rgb(33, 37, 41);">Data are&nbsp;</span><i style="color: rgb(33, 37, 41);">regularly analyzed</i><span style="color: rgb(33, 37, 41);">&nbsp;against the measures (at least annually).</span><br></p>	3	4	\N	<p><span style="color: rgb(33, 37, 41);">Data have not been analyzed or have been analyzed sporadically. Plans for on-going, systematic analysis have not been outlined.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Data analysis is routine. Plans for systematic analysis are operationalized.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Data analysis is sporadic and/or plans for on-going, systematic analysis have been outlined.&nbsp;</span><br></p>	
11	<p><span style="color: rgb(33, 37, 41);">Results are&nbsp;</span><i style="color: rgb(33, 37, 41);">sufficient for analysis</i><span style="color: rgb(33, 37, 41);">.</span><br></p>	3	4	\N	<p><span style="color: rgb(33, 37, 41);">Data are limited by insufficient sample or only a single cycle of data is available.&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">For all SLOs:&nbsp; Data represent all students in program (or reasonable sample); multiple cycles of data are reported.&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">For some SLOs: data represent all students in program (or reasonable sample); multiple data cycles are reported.</span><br></p>	
13	<p><span style="color: rgb(33, 37, 41);">Evidence of&nbsp;</span><i style="color: rgb(33, 37, 41);">data-informed decisions&nbsp;</i><span style="color: rgb(33, 37, 41);">is provided.</span><br></p>	4	4	\N	<p><span style="color: rgb(33, 37, 41);">No evidence of data-informed decisions is provided.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Specific examples of data-informed decisions are provided.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">General statements related to data informed decisions are provided.&nbsp;</span><br></p>	
14	<p><span style="color: rgb(33, 37, 41);">Action has been</span><i style="color: rgb(33, 37, 41);">&nbsp;determined&nbsp;</i><span style="color: rgb(33, 37, 41);">as result of decision.</span><br></p>	4	4	\N	<p><span style="color: rgb(33, 37, 41);">No program-improvement actions are described nor are future actions outlined.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Specific program-improvement actions have been initiated.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Future program-improvement actions are described and/or are under consideration.&nbsp;</span><br></p>	
15	<p><span style="color: rgb(33, 37, 41);">Data analysis practices meet expectations.</span><br></p>	3	5	\N	<p><span style="color: rgb(33, 37, 41);">The program has failed to determine each SLO as being met, partially met, not met, or unknown.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">The program has determined each SLO as being met, partially met, not met, or unknown.&nbsp;</span><br></p>		
16	<p><span style="color: rgb(33, 37, 41);">Decisions and actions meet expectations.&nbsp;</span><br></p>	4	5	\N	<p><span style="color: rgb(33, 37, 41);">No evidence of data-informed decisions is provided.</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Specific examples of data-informed decisions are provided.&nbsp;</span><br></p>	<p><span style="color: rgb(33, 37, 41);">Only general statements related to data informed decisions are provided.</span><br></p>	
\.


--
-- Data for Name: makeReports_slo; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_slo" (id, blooms, "numberOfUses") FROM stdin;
1	CO	1
2	AN	1
24	AN	1
3	AP	1
4	AP	1
5	SN	1
25	EV	1
6	SN	1
49	SN	1
26	EV	1
27	EV	1
28	AN	1
50	SN	1
29	EV	1
30	EV	1
77	AP	1
15	AP	1
31	AN	1
16	AP	1
17	EV	1
8	AN	2
9	AN	2
10	AN	2
11	CO	2
12	CO	2
13	CO	2
14	AN	2
51	SN	1
18	EV	1
19	AP	1
20	SN	1
21	AP	1
52	SN	1
22	AP	1
32	SN	2
23	AP	1
33	EV	2
100	AP	1
53	SN	1
78	EV	1
54	SN	1
34	CO	2
35	AP	2
36	CO	2
37	AP	1
38	AP	1
55	EV	1
39	SN	1
40	SN	1
41	KN	1
79	SN	1
42	AP	1
43	AP	1
44	AP	1
80	SN	1
101	SN	1
81	EV	1
56	SN	2
45	AP	2
46	AP	2
47	AP	2
48	AP	2
57	SN	2
58	SN	2
59	EV	2
60	AP	1
61	AP	1
82	SN	1
62	AN	1
63	SN	1
118	SN	1
64	AN	1
83	EV	1
65	AP	1
66	EV	1
102	AN	1
67	SN	1
84	AP	1
68	AN	1
69	SN	1
85	SN	1
86	SN	1
103	SN	1
70	SN	2
71	SN	2
72	EV	2
87	AP	1
73	SN	1
74	AN	1
75	AP	1
88	AP	1
76	AN	1
146	AP	1
89	CO	1
104	EV	1
90	SN	1
91	AP	1
119	SN	1
105	AP	1
106	AP	1
107	SN	1
120	AP	1
108	KN	1
122	EV	1
142	EV	1
92	AP	4
93	AP	4
94	AP	4
95	AP	4
96	SN	4
97	AN	1
98	SN	1
99	EV	1
109	EV	2
110	SN	2
111	AN	2
112	AP	2
113	AP	2
114	CO	1
143	KN	1
115	SN	1
116	SN	1
117	SN	1
133	AP	2
134	SN	2
135	AP	2
186	AN	1
123	AP	3
136	AP	2
124	SN	3
137	EV	2
188	EV	1
125	EV	3
138	AP	2
187	SN	1
126	AN	3
127	AP	3
139	SN	2
144	SN	1
147	AP	1
145	EV	1
140	SN	1
141	AN	1
180	AP	1
181	EV	1
182	AN	1
189	SN	1
152	AP	1
153	SN	1
190	EV	1
154	SN	1
155	SN	1
156	AP	1
191	AN	1
157	SN	1
158	EV	1
217	EV	1
159	EV	1
192	EV	1
193	AP	1
194	AP	1
195	CO	1
218	AP	1
196	CO	1
197	AP	1
198	AP	1
168	AP	1
220	EV	1
169	EV	1
199	SN	1
170	EV	1
171	KN	1
172	AP	1
173	EV	1
174	EV	1
175	KN	1
221	EV	1
176	AP	1
177	EV	1
178	EV	1
179	KN	1
222	EV	1
183	AN	1
184	SN	1
185	EV	1
223	EV	1
224	EV	1
225	EV	1
148	KN	1
149	SN	1
226	EV	1
227	EV	1
228	EV	1
229	EV	1
160	CO	1
161	EV	1
162	AP	1
163	AP	1
230	EV	1
232	EV	1
211	CO	2
212	EV	2
215	AP	2
216	AP	2
233	EV	1
234	EV	1
235	EV	1
236	EV	1
237	EV	1
238	EV	1
239	EV	1
240	EV	1
241	EV	1
242	EV	1
121	AP	1
164	EV	1
165	EV	1
166	EV	1
167	SN	1
243	KN	1
245	EV	1
246	EV	1
247	EV	1
248	EV	1
249	EV	1
254	SN	1
255	EV	1
256	EV	1
258	AP	1
257	AN	2
259	AP	1
260	AN	1
261	AP	1
262	KN	1
7	SN	3
244	CO	2
263	CO	1
\.


--
-- Data for Name: makeReports_slo_gradGoals; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_slo_gradGoals" (id, slo_id, gradgoal_id) FROM stdin;
1	6	2
2	119	1
3	120	2
4	148	1
5	149	2
6	149	3
10	211	1
11	212	2
14	215	5
15	216	3
24	217	2
25	217	5
26	218	3
27	220	1
28	220	2
29	220	3
30	220	5
31	221	1
32	221	2
33	221	3
34	221	5
35	222	1
36	222	2
37	222	3
38	222	5
39	223	1
40	223	2
41	223	3
42	223	5
43	224	1
44	224	2
45	224	3
46	224	5
47	225	1
48	225	2
49	225	3
50	225	5
51	226	1
52	226	2
53	226	3
54	226	5
55	227	1
56	227	2
57	227	3
58	227	5
59	228	1
60	228	2
61	228	3
62	228	5
63	229	1
64	229	2
65	229	3
66	229	5
67	230	1
68	230	5
69	232	1
70	232	2
71	232	3
72	232	5
73	233	1
74	233	2
75	233	3
76	233	5
77	234	1
78	234	2
79	234	3
80	234	5
81	235	1
82	235	2
83	235	3
84	235	5
85	236	1
86	236	2
87	236	3
88	236	5
89	237	1
90	237	2
91	237	3
92	237	5
93	238	1
94	238	2
95	238	3
96	238	5
97	239	1
98	239	2
99	239	3
100	239	5
101	240	1
102	240	2
103	240	3
104	240	5
105	241	1
106	241	2
107	241	3
108	241	5
109	242	1
110	242	5
111	121	5
112	122	3
113	164	1
114	164	2
115	164	3
116	165	1
117	165	2
118	166	1
119	166	5
120	167	1
121	167	2
122	180	1
123	180	5
124	181	1
125	181	2
126	181	3
127	181	5
128	182	1
129	182	2
130	182	3
131	182	5
132	243	1
133	244	1
134	245	1
135	246	1
136	247	2
137	248	3
138	249	5
143	254	1
144	255	2
145	256	2
146	263	1
\.


--
-- Data for Name: makeReports_sloinreport; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_sloinreport" (id, report_id, slo_id, "changedFromPrior", date, "goalText", number, "numberOfAssess") FROM stdin;
8	5	8	f	2020-10-07	Students will learn, and be able to apply, selected microeconomics – consumer theory concepts.	1	1
9	5	9	f	2020-10-07	Students will learn, and be able to apply, selected microeconomics – producer theory concepts.	2	1
10	5	10	f	2020-10-07	Students will learn, and be able to apply, selected microeconomics – theory of the firm concepts.	3	1
11	5	11	f	2020-10-07	Students will learn, and comprehend, selected long run macroeconomic growth concepts.	4	1
1	2	1	f	2020-09-22	Demonstrate understanding of fundamental interdisciplinary evidence-based knowledge and theories for competent gerontological practice.	1	3
12	5	12	f	2020-10-07	Students will learn, and comprehend, selected business cycle theory and monetary policy concepts.	5	1
2	2	2	f	2020-09-22	Demonstrate critical thinking when analyzing diverse and complex aging issues and outcomes from an interdisciplinary perspective.	2	2
13	5	13	f	2020-10-07	Students will learn, and comprehend, selected stabilization policy concepts.	6	1
26	9	19	f	2020-11-05	Students will summarize their professional qualifications in a resume and cover letter to acquire and complete an internship in an environmental field: the specific skills a student will demonstrate through completion of the internship will be defined through an agreement form developed by the student and sponsor and approved by the program director.	2	2
3	2	3	f	2020-09-22	Exhibit abilities to effectively use basic communication (written, oral, interpersonal) skills and information technology.	3	3
14	5	14	f	2020-10-07	Students will demonstrate proficiency in social science research and discourse practices.	7	1
4	2	4	f	2020-09-22	When interacting with others, demonstrate social and cultural awareness, sensitivity, respect, and support of multiple perspectives, and exhibit personal and social responsibility, and ethical and professional behavior in all settings.	4	3
5	1	5	f	2020-09-23	Ability to implement and evaluate a computer-based system, process, component, or program to meet desired needs.	1	1
27	9	20	f	2020-11-05	Students will synthesize and analyze existing data to produce a technically sound written environmental document that meets regulatory guidelines.	3	1
7	4	7	f	2020-10-03	Design and implement software using reliable engineering techniques.	1	1
35	10	28	f	2020-11-05	Appropriately uses formal and informal language according to written context.	5	1
36	10	29	f	2020-11-05	Synthesizes information from different sources in order to write clear, well-supported essays.	6	1
15	6	15	f	2020-10-07	Students will demonstrate proficiency in the scientific method though an examination covering this topic.	1	1
16	6	16	f	2020-10-07	Students will demonstrate proficiency in knowledge of general science through examination covering this topic.	2	1
17	6	17	f	2020-10-07	Students will demonstrate proficiency in scientific research and discourse practices.	3	1
18	7	8	f	2020-10-07	Students will learn, and be able to apply, selected microeconomics – consumer theory concepts.	1	1
19	7	9	f	2020-10-07	Students will learn, and be able to apply, selected microeconomics – producer theory concepts.	2	1
20	7	10	f	2020-10-07	Students will learn, and be able to apply, selected microeconomics – theory of the firm concepts.	3	1
21	7	11	f	2020-10-07	Students will learn, and comprehend, selected long run macroeconomic growth concepts.	4	1
22	7	12	f	2020-10-07	Students will learn, and comprehend, selected business cycle theory and monetary policy concepts.	5	1
23	7	13	f	2020-10-07	Students will learn, and comprehend, selected stabilization policy concepts.	6	1
24	7	14	f	2020-10-07	Students will demonstrate proficiency in social science research and discourse practices.	7	1
25	9	18	f	2020-11-05	Students will compile, critically evaluate, synthesize, and apply information and data in group discussions, annotated bibliographies, and final written and oral reports specific to environmental issues.	1	1
41	13	32	f	2020-11-05	Students will produce a geographic wall poster including both mapping products and geographic analysis of the content of the maps.	1	0
28	9	21	f	2020-11-05	Students will demonstrate effective and professional oral communication skills through an environmental proposal or final project presentation.	4	1
29	9	22	f	2020-11-05	Students will demonstrate the ability to use standard tools for organizing, manipulating, analyzing and presenting environmental data.	5	1
30	9	23	f	2020-11-05	Students will demonstrate proficiency in applying standard GIS tools to environmental projects.	6	1
37	10	30	f	2020-11-05	Creates and self-edits texts with a high degree of grammatical accuracy for a variety of audiences.	7	1
38	10	31	f	2020-11-05	Identifies reliable sources of information and appropriately cites them in academic writing.	8	1
42	13	33	f	2020-11-05	Students will find related employment in Geography Related Jobs or admission to Graduate School	2	0
39	12	32	f	2020-11-05	Students will produce a geographic wall poster including both mapping products and geographic analysis of the content of the maps.	1	1
31	10	24	f	2020-11-05	Understands idiomatic expressions and slang in the dialect they are most familiar with.	1	1
32	10	25	f	2020-11-05	Gives personal and professional presentations and responds appropriately to questions.	2	1
33	10	26	f	2020-11-05	Understands the gist of films, TV, music, and other media created for native speakers.	3	1
34	10	27	f	2020-11-05	Appropriately uses formal and informal language according to the oral context	4	1
40	12	33	f	2020-11-05	Students will find related employment in Geography Related Jobs or admission to Graduate School	2	1
44	14	35	f	2020-11-05	Be able to communicate mathematics effectively in oral form.	2	1
45	14	36	f	2020-11-05	Demonstrate substantive  comprehension of the major ideas in the core areas of their fields of study.	3	1
46	15	34	f	2020-11-05	Students will be able to make and write correct, clear and concise arguments.	1	0
43	14	34	f	2020-11-05	Students will be able to make and write correct, clear and concise arguments.	1	1
47	15	35	f	2020-11-05	Be able to communicate mathematics effectively in oral form.	2	0
48	15	36	f	2020-11-05	Demonstrate substantive  comprehension of the major ideas in the core areas of their fields of study.	3	0
49	18	37	f	2020-11-09	Students will demonstrate and apply fundamental and advanced knowledge of biomechanics and related STEM fields.	1	2
57	20	45	f	2020-11-09	(CAEP Standards 1.1 and 1.4)\r\nTeacher candidates* implement developmentally appropriate, challenging learning experiences within a variety of learning environments that help all learners* meet high standards and reach their full potential.\r\n          Subscales:  Learner Development, Learner Differences, Learning     \r\n          Environments	1	1
71	23	55	f	2020-11-09	(CAEP Standards 1.1 and 3.6)\r\nTeacher candidates* regularly examine their practice, model ethical behavior, and work with others to contribute to positive change in their practice and profession. \r\nSubscales:  Professional Learning and Ethical Practice , Leadership \r\nand Collaboration	4	1
58	20	46	f	2020-11-09	(CAEP Standard 1.4)\r\nTeacher candidates* draw on a depth of content knowledge to connect concepts and use differing perspectives to engage learners* in critical thinking, creativity, and collaborative problem solving related to authentic local and global issues.\r\n          Subscales:  Content Knowledge, Application of Content	2	2
50	18	38	f	2020-11-09	Students will demonstrate competency in written and oral communication skills by synthesizing research and presenting data.	2	4
59	20	47	f	2020-11-09	(CAEP Standards 1.1 and 1.5)\r\nTeacher candidates* integrate assessment, planning, and instructional strategies in coordinated and engaging ways.\r\nSubscales:  Assessment, Planning for Instruction, Instructional \r\nStrategies	3	2
51	18	39	f	2020-11-09	Students will synthesize interdisciplinary content knowledge and demonstrate effective laboratory and communication skills during development and defense of final capstone project proposal.	3	2
60	20	48	f	2020-11-09	(CAEP Standards 1.1 and 3.6)\r\nTeacher candidates* regularly examine their practice, model ethical behavior, and work with others to contribute to positive change in their practice and profession. \r\nSubscales:  Professional Learning and Ethical Practice, Leadership \r\nand Collaboration	4	1
52	18	40	f	2020-11-09	Students will apply content knowledge and laboratory skills to plan, deisgn, create, and test a relevant tool (e.g., device, software, methodology) related to biomechanics.	4	2
61	21	45	f	2020-11-09	(CAEP Standards 1.1 and 1.4)\r\nTeacher candidates* implement developmentally appropriate, challenging learning experiences within a variety of learning environments that help all learners* meet high standards and reach their full potential.\r\n          Subscales:  Learner Development, Learner Differences, Learning     \r\n          Environments	1	0
62	21	46	f	2020-11-09	(CAEP Standard 1.4)\r\nTeacher candidates* draw on a depth of content knowledge to connect concepts and use differing perspectives to engage learners* in critical thinking, creativity, and collaborative problem solving related to authentic local and global issues.\r\n          Subscales:  Content Knowledge, Application of Content	2	0
63	21	47	f	2020-11-09	(CAEP Standards 1.1 and 1.5)\r\nTeacher candidates* integrate assessment, planning, and instructional strategies in coordinated and engaging ways.\r\nSubscales:  Assessment, Planning for Instruction, Instructional \r\nStrategies	3	0
64	21	48	f	2020-11-09	(CAEP Standards 1.1 and 3.6)\r\nTeacher candidates* regularly examine their practice, model ethical behavior, and work with others to contribute to positive change in their practice and profession. \r\nSubscales:  Professional Learning and Ethical Practice, Leadership \r\nand Collaboration	4	0
53	19	41	f	2020-11-09	Demonstrate content mastery of Physiology of Exercise and\r\nbiomechanics as measured by final examination scores.	1	1
55	19	43	f	2020-11-09	Demonstrate effective written, oral, visual and electronic\r\ncommunication skills.	3	1
65	22	49	f	2020-11-09	Students will demonstrate foundational knowledge of basic human communication and swallowing structures and functional processes, including their biological, neurological, and acoustical systems (respiration, phonation, articulation/resonation, and brain). (CFCC Standard IV. B)	1	1
54	19	42	f	2020-11-09	Apply content knowledge for the development and implementation\r\nof individualized exercise testing and prescription.	2	1
56	19	44	f	2020-11-09	Demonstrate professional responsibilities and dispositions, integrate\r\nand apply specialized knowledge, and develop and manage a selfselected\r\nwork project.	4	1
66	22	50	f	2020-11-09	Students will demonstrate foundational knowledge of the nature interaction and interdependence of speech, language, hearing, and communication disorders and differences, as well as swallowing disorders, including etiologies, characteristics, and anatomical/physiological, acoustic, psychological, developmental, linguistic, and cultural correlates. (CFCC Standard IV. B and C)	2	1
67	22	51	f	2020-11-09	Students will demonstrate the ability to accurately express ideas in writing across the curriculum. (CFCC Standard IV. B)	3	1
69	23	53	f	2020-11-09	(CAEP Standard 1.4)\r\nTeacher candidates* draw on a depth of content knowledge to connect concepts and use differing perspectives to engage learners* in critical thinking, creativity, and collaborative problem solving related to authentic local and global issues.\r\n          Subscales:  Content Knowledge, Application of Content	2	2
68	23	52	f	2020-11-09	(CAEP Standards 1.1 and 1.4)\r\nTeacher candidates* implement developmentally appropriate, challenging learning experiences within a variety of learning environments that help all learners* meet high standards and reach their full potential.\r\n          Subscales:  Learner Development, Learner Differences, Learning     \r\n          Environments	1	1
70	23	54	f	2020-11-09	(CAEP Standards 1.1 and 1.5)\r\nTeacher candidates* integrate assessment, planning, and instructional strategies in coordinated and engaging ways.\r\nSubscales:  Assessment, Planning for Instruction, Instructional \r\nStrategies	3	2
72	24	56	f	2020-11-09	(CAEP Standards 1.1 and 1.4)\r\nTeacher candidates* implement developmentally appropriate, challenging learning experiences within a variety of learning environments that help all learners* meet high standards and reach their full potential.\r\n          Subscales:  Learner Development, Learner Differences, Learning     \r\n          Environments	1	1
149	42	111	f	2020-11-10	Students will demonstrate competence in research methodology	3	1
150	42	112	f	2020-11-10	Students will demonstrate effective written communication skills	4	1
151	42	113	f	2020-11-10	Students will demonstrate effective oral communication skills	5	1
148	42	110	f	2020-11-10	Students will demonstrate a mastery of content in a specified field	2	1
157	44	114	f	2020-11-10	Mastery of Content in the Discipline	1	2
73	24	57	f	2020-11-09	(CAEP Standard 1.4)\r\nTeacher candidates* draw on a depth of content knowledge to connect concepts and use differing perspectives to engage learners* in critical thinking, creativity, and collaborative problem solving related to authentic local and global issues.\r\n          Subscales:  Content Knowledge, Application of Content	2	2
121	36	93	f	2020-11-09	Students will demonstrate effective oral communication skills.	2	1
74	24	58	f	2020-11-09	(CAEP Standards 1.1 and 1.5)\r\nTeacher candidates* integrate assessment, planning, and instructional strategies in coordinated and engaging ways.\r\nSubscales:  Assessment, Planning for Instruction, Instructional \r\nStrategies	3	2
75	24	59	f	2020-11-09	(CAEP Standards 1.1 and 3.6)\r\nTeacher candidates* regularly examine their practice, model ethical behavior, and work with others to contribute to positive change in their practice and profession. \r\nSubscales:  Professional Learning and Ethical Practice , Leadership \r\nand Collaboration	4	1
76	25	56	f	2020-11-09	(CAEP Standards 1.1 and 1.4)\r\nTeacher candidates* implement developmentally appropriate, challenging learning experiences within a variety of learning environments that help all learners* meet high standards and reach their full potential.\r\n          Subscales:  Learner Development, Learner Differences, Learning     \r\n          Environments	1	1
80	26	60	f	2020-11-09	Candidates in the BSED; Library Science program demonstrate their ability to embrace evolving trends in professional practices through the effective utilization of technology incorporating concepts relevant to service design, application and use. \r\n\r\nAligned to ALA Standards: II.2.2 and II.2.3	1	1
77	25	57	f	2020-11-09	(CAEP Standard 1.4)\r\nTeacher candidates* draw on a depth of content knowledge to connect concepts and use differing perspectives to engage learners* in critical thinking, creativity, and collaborative problem solving related to authentic local and global issues.\r\n          Subscales:  Content Knowledge, Application of Content	2	2
81	26	61	f	2020-11-09	Candidates in the BSED; Library Science program demonstrate their ability to apply leadership principles and ethics as they respond to the needs of a diverse and global society.\r\n\r\nAligned to ALA Standards:  ALA II.2.1 and II.2.4	2	1
78	25	58	f	2020-11-09	(CAEP Standards 1.1 and 1.5)\r\nTeacher candidates* integrate assessment, planning, and instructional strategies in coordinated and engaging ways.\r\nSubscales:  Assessment, Planning for Instruction, Instructional \r\nStrategies	3	2
79	25	59	f	2020-11-09	(CAEP Standards 1.1 and 3.6)\r\nTeacher candidates* regularly examine their practice, model ethical behavior, and work with others to contribute to positive change in their practice and profession. \r\nSubscales:  Professional Learning and Ethical Practice , Leadership \r\nand Collaboration	4	1
84	27	64	f	2020-11-09	Students will engage in the visual analysis of a work of art that includes formal, iconographic/symbolic, & contextual components.	2	3
82	26	62	f	2020-11-09	Candidates in the BSED; Library Science programs demonstrate a commitment to continually develop the analytic skills and competencies needed to provide direction in a rapidly changing information environment.\r\n\r\nAligned to ALA Standards:  II.2.5, II.2.6	3	1
91	29	71	f	2020-11-09	Students will demonstrate the ability to create a professional\r\nportfolio specific to their career path.	2	3
97	31	74	f	2020-11-09	Visual Communications Rubric – 3.00 Senior Average / 2.96 Underclassman\r\n             Students will understand design elements of line, shape, form, texture, mass,     \r\n             Shape, rhythm, composition, light, color and synthesis	2	3
85	27	65	f	2020-11-09	Students will organize & deliver a public lecture with attendant visual components.	3	2
93	30	70	f	2020-11-09	Students will demonstrate the ability to create a coherent\r\nbody of personal work that exhibits the mastery of the required\r\ntechnology and/or technique in their concentration, and employs\r\nsignificant content related to that concentration.	1	3
83	27	63	f	2020-11-09	Students will write a research-based paper with a clearly articulated thesis, defensible argumentation of said thesis, & evidence to support said thesis, including primary & secondary sources.	1	5
90	29	70	f	2020-11-09	Students will demonstrate the ability to create a coherent\r\nbody of personal work that exhibits the mastery of the required\r\ntechnology and/or technique in their concentration, and employs\r\nsignificant content related to that concentration.	1	3
95	30	72	f	2020-11-09	Students will demonstrate their ability to clearly articulate in\r\nan artist statement their concepts, their use of the fundamentals of\r\ndesign and describe the importance of their work while defining its\r\nplace in both the appropriate historical and contemporary artistic\r\npractices in their elected field.	3	3
92	29	72	f	2020-11-09	Students will demonstrate their ability to clearly articulate in\r\nan artist statement their concepts, their use of the fundamentals of\r\ndesign and describe the importance of their work while defining its\r\nplace in both the appropriate historical and contemporary artistic\r\npractices in their elected field.	3	3
86	28	66	f	2020-11-09	Students will recognize fictional craft techniques and use craft vocabulary correctly. Students will demonstrate understanding of how a fictional narrative is built.	1	1
87	28	67	f	2020-11-09	Students will produce a portfolio of original poetry that demonstrates revision techniques developed throughout the term.	2	1
88	28	68	f	2020-11-09	Students will deliver a successful oral presentation on an original work of poetry.	3	1
89	28	69	f	2020-11-09	Students will demonstrate the skills learned throughout the Writer’s Workshop program.	4	1
94	30	71	f	2020-11-09	Students will demonstrate the ability to create a professional\r\nportfolio specific to their career path.	2	3
152	43	109	f	2020-11-10	Students will produce new or original work	1	1
96	31	73	f	2020-11-09	Critical and Creative Thinking – 3.23 Senior Average / 3.06 Underclassman\r\n             Students will be able to: Explain issues, use evidence, Develop a point of view,           \r\n             Draw conclusions, Connect & Synthesize complex ideas.	1	3
153	43	110	f	2020-11-10	Students will demonstrate a mastery of content in a specified field	2	1
154	43	111	f	2020-11-10	Students will demonstrate competence in research methodology	3	1
155	43	112	f	2020-11-10	Students will demonstrate effective written communication skills	4	1
156	43	113	f	2020-11-10	Students will demonstrate effective oral communication skills	5	1
160	44	117	f	2020-11-10	Effective Oral Communication and Oral Presentation Skills	4	1
158	44	115	f	2020-11-10	Demonstrated Competence in Conducting Research	2	1
159	44	116	f	2020-11-10	Acquisition of Andragogical Skills	3	1
98	31	75	f	2020-11-09	Project Management – 4.0 Senior Average / 3.5 Underclassman\r\n            Executes all tasks in a deliberate sequence that reflects essential priorities.  Works                \r\n            simultaneously on different tasks of the overall proejct at caried stages of       \r\n            completion. Initiates clear communication with team members & respone to         \r\n            other promptly and clearly.  Completes all tasks on time within a predeteermined \r\n            and communly agreed upon schedule.	3	1
99	31	76	f	2020-11-09	Collaboration – 3.15 Senior Average / 3.5 Underclassman\r\n           Students will learn to investigate, listen, discuss, propose and adapt	4	2
100	32	77	f	2020-11-09	Students will demonstrate the ability to think creatively about a complex problem.	1	1
101	32	78	f	2020-11-09	Students will craft an original, multidisciplinary solution that addresses a complex\r\nproblem.	2	1
102	32	79	f	2020-11-09	Students will tailor a presentation, explaining a multidisciplinary solution, to a targeted\r\naudience.	3	1
122	36	94	f	2020-11-09	Students will demonstrate effective audio and/or visual communication skills.	3	1
107	34	84	f	2020-11-09	Apply knowledge of computing and mathematics appropriate to the discipline	1	1
103	33	80	f	2020-11-09	Students will demonstrate proficiency in three formal papers involving emergency management concepts and applications (Emergency management concepts and applications)	1	1
104	33	81	f	2020-11-09	Students will demonstrate critical thinking skills applied to emergency management concepts through formal written graduation research report. (Critical thinking skills)	2	1
105	33	82	f	2020-11-09	Students will deliver a formal presentation on their emergency management graduation research report. (Public Speaking skills)	3	1
106	33	83	f	2020-11-09	Students will demonstrate proficiency in verbal communication through oral presentations involving emergency management concepts and application. (Technical Report & Professional Research Presentation)	4	1
123	36	95	f	2020-11-09	Students will demonstrate critical and analytical thinking.	4	1
124	36	96	f	2020-11-09	Students will employ research tools to ethically aquire and apply knowledge.	5	1
108	34	85	f	2020-11-09	Apply traditional and contemporary analysis and design techniques	2	1
109	34	86	f	2020-11-09	Analyze organizational problems or opportunities and formulate appropriate strategies and solutions using information technologies	3	1
110	34	87	f	2020-11-09	Communicate effectively to a range of audiences through listening and through oral, written, and visual presentation	4	1
111	34	88	f	2020-11-09	Work effectively in a team environment and collaborate with others to accomplish a common goal	5	1
112	34	89	f	2020-11-09	Understand and apply appropriate types of computer-based tools to support communication	6	1
113	34	90	f	2020-11-09	Design, integrate, implement, and evaluate a computer-based system, process, component, or program to meet desired needs	7	1
114	34	91	f	2020-11-09	Apply relevant project management techniques and processes	8	1
125	37	92	f	2020-11-09	Students will demonstrate effective written communication skills.	1	1
115	35	92	f	2020-11-09	Students will demonstrate effective written communication skills.	1	1
116	35	93	f	2020-11-09	Students will demonstrate effective oral communication skills.	2	1
117	35	94	f	2020-11-09	Students will demonstrate effective audio and/or visual communication skills.	3	1
118	35	95	f	2020-11-09	Students will demonstrate critical and analytical thinking.	4	1
119	35	96	f	2020-11-09	Students will employ research tools to ethically aquire and apply knowledge.	5	1
120	36	92	f	2020-11-09	Students will demonstrate effective written communication skills.	1	1
126	37	93	f	2020-11-09	Students will demonstrate effective oral communication skills.	2	1
127	37	94	f	2020-11-09	Students will demonstrate effective audio and/or visual communication skills.	3	1
128	37	95	f	2020-11-09	Students will demonstrate critical and analytical thinking.	4	1
129	37	96	f	2020-11-09	Students will employ research tools to ethically aquire and apply knowledge.	5	1
130	38	92	f	2020-11-09	Students will demonstrate effective written communication skills.	1	1
131	38	93	f	2020-11-09	Students will demonstrate effective oral communication skills.	2	1
132	38	94	f	2020-11-09	Students will demonstrate effective audio and/or visual communication skills.	3	1
133	38	95	f	2020-11-09	Students will demonstrate critical and analytical thinking.	4	1
134	38	96	f	2020-11-09	Students will employ research tools to ethically aquire and apply knowledge.	5	1
137	39	99	f	2020-11-10	Students will deliver a successful performance in a senior recital.	3	1
138	39	100	f	2020-11-10	Students will demonstrate proficiency on the piano keyboard.	4	1
141	40	103	f	2020-11-10	Students will communicate an understanding of music\r\nhistory through formal written composition.	2	1
142	40	104	f	2020-11-10	Students will deliver a successful performance in a senior recital.	3	1
135	39	97	f	2020-11-10	Students will demonstrate proficiency in music theory as\r\ndemonstrated on a summative assessment.	1	1
136	39	98	f	2020-11-10	Students will communicate an understanding of music\r\nhistory through formal written composition.	2	1
139	39	101	f	2020-11-10	Students will demonstrate knowledge of instruction and\r\nassessment through a strategies project presentation.	5	1
143	40	105	f	2020-11-10	Students will demonstrate proficiency on the piano keyboard.	4	1
140	40	102	f	2020-11-10	Students will demonstrate proficiency in music theory as\r\ndemonstrated on a summative assessment.	1	1
144	41	106	f	2020-11-10	Students will have the ability to lead and engage urban communities and institutions	1	2
146	41	108	f	2020-11-10	Students will have a mastery of technical, analytical and\r\ntheoretical dimensions of the urban environment.	3	2
145	41	107	f	2020-11-10	Students will understand the interactive effects among the built, human and natural systems in the urban environment.	2	1
147	42	109	f	2020-11-10	Students will produce new or original work	1	1
161	44	118	f	2020-11-10	Effective Written Communication Skills	5	1
178	47	125	f	2020-11-11	Teachers are responsible for managing and monitoring student learning.	3	2
194	50	134	f	2020-11-11	Special education graduate students create safe, inclusive, culturally responsive learning environments so that individuals with exceptionalities become active and effective learners and develop emotional well-being, positive social interactions, and self-determination. CAEP A.1.1c (Employment of Data Analysis and Supportive School Environments)	2	1
179	47	126	f	2020-11-11	Teachers think systematically about their practice and learn from experience.	4	2
162	45	119	f	2020-11-11	Mastery of discipline content	1	1
163	45	120	f	2020-11-11	Proficiency in analyzing, evaluating and synthesizing information	2	1
165	45	122	f	2020-12-03	Knowledge of discipline’s ethics and standards	4	1
180	47	127	f	2020-11-11	Teachers are members of learning communities.	5	2
177	47	124	f	2020-11-11	Teachers know the subjects they teach and how to teach those subjects to students.	2	1
166	46	123	f	2020-11-11	Teachers are committed to students and their learning.	1	2
181	48	123	f	2020-11-11	Teachers are committed to students and their learning.	1	2
167	46	124	f	2020-11-11	Teachers know the subjects they teach and how to teach those subjects to students.	2	2
168	46	125	f	2020-11-11	Teachers are responsible for managing and monitoring student learning.	3	2
182	48	124	f	2020-11-11	Teachers know the subjects they teach and how to teach those subjects to students.	2	1
169	46	126	f	2020-11-11	Teachers think systematically about their practice and learn from experience.	4	2
170	46	127	f	2020-11-11	Teachers are members of learning communities.	5	2
164	45	121	f	2020-12-03	Effective oral and written communication	3	1
188	49	135	f	2020-11-11	Special education graduate students use knowledge of general and specialized curricula to individualize learning for individuals with exceptionalities.\r\nCAEP A.1.1b (Use and Knowledge of Research)	3	2
183	48	125	f	2020-11-11	Teachers are responsible for managing and monitoring student learning.	3	2
199	50	139	f	2020-11-11	Special education graduate students collaborate with families, other educators, related service providers, individuals with exceptionalities, and personnel from community agencies in culturally responsive ways to address the needs of individuals with exceptionalities across a range of learning experiences.\r\nCAEP A.1.1d (Leading or participating in collaborative activities)	7	1
184	48	126	f	2020-11-11	Teachers think systematically about their practice and learn from experience.	4	2
195	50	135	f	2020-11-11	Special education graduate students use knowledge of general and specialized curricula to individualize learning for individuals with exceptionalities.\r\nCAEP A.1.1b (Use and Knowledge of Research)	3	2
185	48	127	f	2020-11-11	Teachers are members of learning communities.	5	2
189	49	136	f	2020-11-11	Special education graduate students use multiple methods of assessment and data-sources in making educational decisions.\r\nCAEP A.1.1a (Data Literacy)	4	2
190	49	137	f	2020-11-11	Special education graduate students select, adapt, and use a repertoire of evidence-based instructional strategies to advance learning of individuals with exceptionalities. \r\nCAEP A.1.1b (Use and Knowledge of Research)	5	2
191	49	138	f	2020-11-11	Special education graduate students use foundational knowledge of the field and their professional Ethical Principles and Practice Standards to inform special education practice, to engage in lifelong learning, and to advance the profession.\r\nA.1.1f (Application of professional dispositions, laws, etc.)	6	1
192	49	139	f	2020-11-11	Special education graduate students collaborate with families, other educators, related service providers, individuals with exceptionalities, and personnel from community agencies in culturally responsive ways to address the needs of individuals with exceptionalities across a range of learning experiences.\r\nCAEP A.1.1d (Leading or participating in collaborative activities)	7	1
176	47	123	f	2020-11-11	Teachers are committed to students and their learning.	1	2
186	49	133	f	2020-11-11	Special education graduate students understand how exceptionalities may interact with development and learning and use this knowledge to provide meaningful and challenging learning experiences for individuals with exceptionalities.	1	2
187	49	134	f	2020-11-11	Special education graduate students create safe, inclusive, culturally responsive learning environments so that individuals with exceptionalities become active and effective learners and develop emotional well-being, positive social interactions, and self-determination. CAEP A.1.1c (Employment of Data Analysis and Supportive School Environments)	2	1
197	50	137	f	2020-11-11	Special education graduate students select, adapt, and use a repertoire of evidence-based instructional strategies to advance learning of individuals with exceptionalities. \r\nCAEP A.1.1b (Use and Knowledge of Research)	5	2
193	50	133	f	2020-11-11	Special education graduate students understand how exceptionalities may interact with development and learning and use this knowledge to provide meaningful and challenging learning experiences for individuals with exceptionalities.	1	2
196	50	136	f	2020-11-11	Special education graduate students use multiple methods of assessment and data-sources in making educational decisions.\r\nCAEP A.1.1a (Data Literacy)	4	2
198	50	138	f	2020-11-11	Special education graduate students use foundational knowledge of the field and their professional Ethical Principles and Practice Standards to inform special education practice, to engage in lifelong learning, and to advance the profession.\r\nA.1.1f (Application of professional dispositions, laws, etc.)	6	1
201	51	141	f	2020-11-11	Students will be able to analyze data and create coherent arguments summarizing their work.	2	1
202	51	142	f	2020-11-11	Students will develop and complete an original research idea.	3	1
203	51	143	f	2020-11-11	Students will demonstrate knowledge of the discipline’s ethics and standards.	4	1
200	51	140	f	2020-11-11	Students will demonstrate mastery of discipline content.	1	1
205	52	145	f	2020-11-11	Students shall demonstrate proficiency in analyzing, evaluating, and synthesizing information at the graduate level.	2	1
204	52	144	f	2020-11-11	Students shall demonstrate mastery of discipline content at the graduate level.	1	1
212	54	152	f	2020-11-11	Professional Orientation and Ethical Practice – Students demonstrate an understanding of the professional functions of counseling.  (See attached rubric for SLO sub-categories)	1	1
206	52	146	f	2020-11-11	Students shall demonstrate effective oral and written communication at the graduate level.	3	1
207	52	147	f	2020-11-11	Students shall demonstrate knowledge of the discipline’s ethics and standards at the graduate level.	4	1
213	54	153	f	2020-11-11	Social and Cultural Diversity – Students demonstrate an understanding of the cultural context of relationships, issues, and trends in a multicultural society. (See attached rubric for SLO sub-categories)	2	1
329	65	242	f	2020-12-03	Professional Work Characteristics Students develop good rapport with students, teachers, staff members, parents, and site supervisors. They engage in professional behaviors that enable them to develop positive relationships (e.g., enthusiasm, dependability, cooperation) and they are reflective practitioners who use feedback to improve performance. They participate in the program’s student organization and attend and contribute to local, state, and national conferences.	11	1
209	53	149	f	2020-12-03	Students will demonstrate the required skills to work in a diverse healthcare environment.	2	2
233	8	165	f	2020-12-03	Graduating MA Students will demonstrate a professional application of Critical Approaches	2	1
214	54	154	f	2020-11-11	Human Growth and Development – Students demonstrate an understanding of the nature and needs of persons at all developmental levels and in multicultural contexts. (See attached rubric for SLO sub-categories)	3	1
215	54	155	f	2020-11-11	Career Development – Students demonstrate an understanding of career development and related life factors. (See attached rubric for SLO sub-categories)	4	1
232	8	164	f	2020-12-03	Graduating MA students will demonstrate a professional Sense of Genre and Culture and History	1	1
216	54	156	f	2020-11-11	Helping Relationships – Students demonstrate an understanding of the counseling process in a multicultural society. (See attached rubric for SLO sub-categories)	5	1
234	8	166	f	2020-12-03	Graduating MA Students will demonstrate professional Communication Skills	3	1
217	54	157	f	2020-11-11	Group Work – Students demonstrate a theoretical and experiential understanding of group purpose, development, dynamics, theories, methods, skills, and other group approaches in a multicultural society. (See attached rubric for SLO sub-categories)	6	1
218	54	158	f	2020-11-11	Assessment – Students demonstrate an understanding of individual and group approaches to assessment and evaluation in multicultural societies. (See attached rubric for SLO sub-categories)	7	1
235	8	167	f	2020-12-03	Graduating MA Students will demonstrate Purposeful Reading	4	1
219	54	159	f	2020-11-11	Research and Program Evaluation – Students demonstrate an understanding of research methods, statistical analysis, needs assessment, and program evaluation. (See attached rubric for SLO sub-categories)	8	1
248	67	180	f	2020-12-03	Students will demonstrate language proficiency commensurate with “Advanced Low to Advanced High” target-language oral and written proficiency according to ACTFL Proficiency scale	1	2
249	67	181	f	2020-12-03	Students will analyze, discuss, and debate issues in Second Language Acquisition Theory and Pedagogy	2	2
250	67	182	f	2020-12-03	Students will choose appropriate research tools and theories to produce a classroom-based research project	3	2
208	53	148	f	2020-12-03	Students will graduate as qualified candidates for employment or advanced academic or professional study.	1	2
228	55	160	f	2020-11-11	Students shall demonstrate at the graduate level mastery of educational content.	1	1
229	55	161	f	2020-11-11	Students shall demonstrate at the graduate level proficiency in analyzing, evaluating, & synthesizing information.	2	1
230	55	162	f	2020-11-11	Students shall demonstrate at the graduate level effective oral and written communication.	3	1
231	55	163	f	2020-11-11	Students shall demonstrate at the graduate level knowledge of discipline's ethics and standards.	4	1
244	60	176	f	2020-11-11	Mastery of discipline content	1	2
239	58	171	f	2020-11-11	Demonstrate knowledge of discipline’s ethics and standards	4	0
236	58	168	f	2020-11-11	Mastery of discipline content	1	1
237	58	169	f	2020-11-11	Proficiency in analyzing, evaluating, and synthesizing information	2	1
238	58	170	f	2020-11-11	Effective oral and written communication	3	1
243	59	175	f	2020-11-11	Demonstrate knowledge of discipline’s ethics and standards	4	0
240	59	172	f	2020-11-11	Mastery of discipline content	1	2
241	59	173	f	2020-11-11	Proficiency in analyzing, evaluating, and synthesizing information	2	2
242	59	174	f	2020-11-11	Effective oral and written communication	3	1
247	60	179	f	2020-11-11	Demonstrate knowledge of discipline’s ethics and standards	4	0
245	60	177	f	2020-11-11	Proficiency in analyzing, evaluating, and synthesizing information	2	2
246	60	178	f	2020-11-11	Effective oral and written communication	3	1
251	62	183	f	2020-11-11	Students will demonstrate knowledge of their discipline and the general issues of psychology that have an impact on their discipline	1	1
252	62	184	f	2020-11-11	Students will have the ability to synthesize professional information relative to their field and see what further information is needed to advance our understanding.  Specifically, this includes the proposal of an original research project.  Elements of this skill are found in the attached rubric	2	1
253	62	185	f	2020-11-11	Students will be capable of conducting original research in their field, including sufficient understanding of methods and statistics to conduct appropriate analyses.	3	1
259	61	191	f	2020-11-11	Demonstrate competence in the history and philosophy of behaviorism, theoretical approaches to understanding behavior, and interpretation of behavior in terms of the concepts and principles of behavior analysis.	3	2
260	61	192	f	2020-11-11	Demonstrate competence in the application of the principles of behavior and multiple areas of investigation and practice.	4	2
254	63	186	f	2020-11-11	Discipline Knowledge: Students will demonstrate knowledge of their discipline and the general issues of psychology that have an impact on their discipline	1	1
255	63	187	f	2020-11-11	Synthesis and Extension: Students will have the ability to synthesize professional information relative to their field and see what further information is needed to advance our understanding. Elements of this skill are found in the attached rubric	2	1
256	63	188	f	2020-11-11	Conduct of Original Research: Students will be capable of conducting original research in their field, including sufficient understanding of methods and statistics to conduct appropriate analyses	3	1
261	61	193	f	2020-11-11	Demonstrate competence in understanding how principles of behavior are discovered and described in the context of basic research.	5	2
257	61	189	f	2020-11-11	Demonstrate competence in the use of technical terminology pertaining to the concepts and principles of behavior analysis.	1	3
262	61	194	f	2020-11-11	Demonstrate understanding of legal constraints and ethical guidelines as pertinent to behavioral research and practice.	6	3
258	61	190	f	2020-11-11	Demonstrate competence in measurement of behavior, data collection analysis and graphic representation, and experimental design with particular emphasis on single subject design	2	3
263	64	195	f	2020-11-11	Students will demonstrate proficiency regarding written communication skills.	1	1
264	64	196	f	2020-11-11	Students will demonstrate proficiency regarding oral communication skills.	2	1
265	64	197	f	2020-11-11	Students will demonstrate adequate knowledge of I/O psychology.	3	1
266	64	198	f	2020-11-11	Students will demonstrate proficiency of practitioner skills in a field setting.	4	1
267	64	199	f	2020-11-11	Students will demonstrate proficiency of research skills.	5	1
311	66	224	f	2020-12-03	School-wide Practices to Promote Learning Students have knowledge of school and systems structure, organization, and theory; general and special education; technology resources; and evidence-based school practices that promote learning and mental and behavioral health. Students, in collaboration with others, demonstrate skills to develop and implement practices and strategies to create and maintain effective and supportive learning environments for children and others.	5	2
310	66	223	f	2020-12-03	Interventions and Mental Health Services to Develop Social and Life Skills Students have knowledge of biological, cultural, developmental, and social influences on behavior and mental health; behavioral and emotional impacts on learning and life skills; and evidence-based strategies to promote social–emotional functioning and mental health. Students, in collaboration with others, demonstrate skills to use assessment and data-collection methods and to implement and evaluate services that support socialization, learning, and mental health.	4	2
290	56	211	f	2020-12-03	Students shall demonstrate at the graduate level mastery of educational content.	1	1
312	66	225	f	2020-12-03	Preventive and Responsive Services Students have knowledge of principles and research related to resilience and risk factors in learning and mental health, services in schools and communities to support multitiered prevention, and evidence-based strategies for effective crisis response. Students, in collaboration with others, demonstrate skills to promote services that enhance learning, mental and behavioral health, safety, and physical well-being through protective and adaptive factors and to implement effective crisis preparation, response, and recovery.	6	2
300	57	211	f	2020-12-03	Students shall demonstrate at the graduate level mastery of educational content.	1	1
301	57	212	f	2020-12-03	Students shall demonstrate at the graduate level proficiency in analyzing, evaluating, & synthesizing information.	2	1
298	56	215	f	2020-12-03	Students shall demonstrate at the graduate level effective oral and written communication.	3	1
291	56	212	f	2020-12-03	Students shall demonstrate at the graduate level proficiency in analyzing, evaluating, & synthesizing information.	2	1
302	57	215	f	2020-12-03	Students shall demonstrate at the graduate level effective oral and written communication.	3	1
299	56	216	f	2020-12-03	Students shall demonstrate at the graduate level knowledge of educational leadership ethics and standards.	4	1
303	57	216	f	2020-12-03	Students shall demonstrate at the graduate level knowledge of educational leadership ethics and standards.	4	1
304	53	217	f	2020-12-03	Students will demonstrate an ability to practice evidence-based medicine in a variety of clinical settings.	3	3
305	53	218	f	2020-12-03	Students will be an engaged member of the athletic training community and profession.	4	2
308	66	221	f	2020-12-03	Consultation and Collaboration Students have knowledge of varied methods of consultation, collaboration, and communication applicable to individuals, families, groups, and systems and used to promote effective implementation of services. As part of a systematic and comprehensive process of effective decision making and problem-solving that permeates all aspects of service delivery, students demonstrate skills to consult, collaborate, and communicate effectively with others.	2	2
307	66	220	f	2020-12-03	Data based decision making and accountability Students have knowledge of varied models and methods of assessment that yield information useful in identifying strengths and needs, in understanding problems, and in measuring progress and outcomes. As part of a systematic and comprehensive process of effective decision making and problem-solving that permeates all aspects of service delivery, students demonstrate skills to use psychological and educational assessment, data collection strategies, and technology resources and apply results to design, implement, and evaluate response to services and programs.	1	2
309	66	222	f	2020-12-03	Interventions and Instructional Support to Develop Academic Skills Students have knowledge of biological, cultural, and social influences on academic skills; human learning, cognitive, and developmental processes; and evidence-based curriculum and instructional strategies. Students, in collaboration with others, demonstrate skills to use assessment and data collection methods and to implement and evaluate services that support cognitive and academic skills.	3	2
313	66	226	f	2020-12-03	Home/School/Community Collaboration Students have knowledge of principles and research related to family systems, strengths, needs, and culture; evidence-based strategies to support family influences on children’s learning, socialization, and mental health; and methods to develop collaboration between families and schools. Students, in collaboration with others, demonstrate skills to design, implement, and evaluate services that respond to culture and context and facilitate family and school partnership/ interactions with community agencies for enhancement of academic and social–behavioral outcomes for children.	7	2
316	66	229	f	2020-12-03	Legal, Ethical, and Professional Practice Students have knowledge of the history and foundations of school psychology; multiple service models and methods; ethical, legal, and professional standards; and other factors related to professional identity and effective practice as school psychologists. Students demonstrate skills to provide services consistent with ethical, legal, and professional standards; engage in responsive ethical and professional decision-making; and collaborate with other professionals.	10	2
314	66	227	f	2020-12-03	Diversity in Development and Learning Students have knowledge of individual differences, abilities, disabilities, and other diverse characteristics; principles and research related to diversity factors for children, families, and schools, including factors related to culture, context, and individual and role differences; and evidence-based strategies to enhance services and address potential influences related to diversity. Students provide professional services that promote effective functioning for individuals, families, and schools with diverse characteristics, cultures, and backgrounds across multiple contexts. Understanding and respect for diversity in development and learning, and advocacy for social justice, are foundations for all aspects of service delivery.	8	2
315	66	228	f	2020-12-03	Research and Program Evaluation Students have knowledge of research design, statistics, measurement, varied data collection and analysis techniques, and program evaluation methods sufficient for understanding research and interpreting data in applied settings. Students demonstrate skills to evaluate and apply research as a foundation for service delivery and, in collaboration with others, use various techniques and technology resources for data collection, measurement, and analysis to support effective practices at the individual, group, and/or systems levels.	9	2
346	79	257	f	2020-12-10	Students will...	2	1
317	66	230	f	2020-12-03	Professional Work Characteristics Students develop good rapport with students, teachers, staff members, parents, and site supervisors. They engage in professional behaviors that enable them to develop positive relationships (e.g., enthusiasm, dependability, cooperation) and they are reflective practitioners who use feedback to improve performance. They participate in the program’s student organization and attend and contribute to local, state, and national conferences.	11	1
320	65	233	f	2020-12-03	Consultation and Collaboration Students have knowledge of varied methods of consultation, collaboration, and communication applicable to individuals, families, groups, and systems and used to promote effective implementation of services. As part of a systematic and comprehensive process of effective decision making and problem solving that permeates all aspects of service delivery, students demonstrate skills to consult, collaborate, and communicate effectively with others.	2	1
319	65	232	f	2020-12-03	Data based decision making and accountability Students have knowledge of varied models and methods of assessment that yield information useful in identifying strengths and needs, in understanding problems, and in measuring progress and outcomes. As part of a systematic and comprehensive process of effective decision making and problem-solving that permeates all aspects of service delivery, students demonstrate skills to use psychological and educational assessment, data collection strategies, and technology resources and apply results to design, implement, and evaluate response to services and programs.	1	1
321	65	234	f	2020-12-03	Interventions and Instructional Support to Develop Academic Skills Students have knowledge of biological, cultural, and social influences on academic skills; human learning, cognitive, and developmental processes; and evidence-based curriculum and instructional strategies. Students, in collaboration with others, demonstrate skills to use assessment and data collection methods and to implement and evaluate services that support cognitive and academic skills.	3	1
322	65	235	f	2020-12-03	Interventions and Mental Health Services to Develop Social and Life Skills Students have knowledge of biological, cultural, developmental, and social influences on behavior and mental health; behavioral and emotional impacts on learning and life skills; and evidence-based strategies to promote social–emotional functioning and mental health. Students, in collaboration with others, demonstrate skills to use assessment and data-collection methods and to implement and evaluate services that support socialization, learning, and mental health.	4	1
323	65	236	f	2020-12-03	School-wide Practices to Promote Learning Students have knowledge of school and systems structure, organization, and theory; general and special education; technology resources; and evidence-based school practices that promote learning and mental and behavioral health. Students, in collaboration with others, demonstrate skills to develop and implement practices and strategies to create and maintain effective and supportive learning environments for children and others.	5	1
324	65	237	f	2020-12-03	Preventive and Responsive Services Students have knowledge of principles and research related to resilience and risk factors in learning and mental health, services in schools and communities to support multitiered prevention, and evidence-based strategies for effective crisis response. Students, in collaboration with others, demonstrate skills to promote services that enhance learning, mental and behavioral health, safety, and physical well-being through protective and adaptive factors and to implement effective crisis preparation, response, and recovery.	6	1
328	65	241	f	2020-12-03	Legal, Ethical, and Professional Practice Students have knowledge of the history and foundations of school psychology; multiple service models and methods; ethical, legal, and professional standards; and other factors related to professional identity and effective practice as school psychologists. Students demonstrate skills to provide services consistent with ethical, legal, and professional standards; engage in responsive ethical and professional decision-making; and collaborate with other professionals.	10	1
325	65	238	f	2020-12-03	Home/School/Community Collaboration Students have knowledge of principles and research related to family systems, strengths, needs, and culture; evidence-based strategies to support family influences on children’s learning, socialization, and mental health; and methods to develop collaboration between families and schools. Students, in collaboration with others, demonstrate skills to design, implement, and evaluate services that respond to culture and context and facilitate family and school partnership/ interactions with community agencies for enhancement of academic and social–behavioral outcomes for children.	7	1
326	65	239	f	2020-12-03	Diversity in Development and Learning Students have knowledge of individual differences, abilities, disabilities, and other diverse characteristics; principles and research related to diversity factors for children, families, and schools, including factors related to culture, context, and individual and role differences; and evidence-based strategies to enhance services and address potential influences related to diversity. Students provide professional services that promote effective functioning for individuals, families, and schools with diverse characteristics, cultures, and backgrounds across multiple contexts. Understanding and respect for diversity in development and learning, and advocacy for social justice, are foundations for all aspects of service delivery.	8	1
327	65	240	f	2020-12-03	Research and Program Evaluation Students have knowledge of research design, statistics, measurement, varied data collection and analysis techniques, and program evaluation methods sufficient for understanding research and interpreting data in applied settings. Students demonstrate skills to evaluate and apply research as a foundation for service delivery and, in collaboration with others, use various techniques and technology resources for data collection, measurement, and analysis to support effective practices at the individual, group, and/or systems levels.	9	1
330	69	243	f	2020-12-04	Be proficient in CS theory	1	1
331	70	244	f	2020-12-04	Gain proficiency in machine learning.	1	1
333	71	246	f	2020-12-09	Students will be able to participate in and contribute to the policy process	2	1
332	71	245	f	2020-12-09	Students will be able to lead and manage in public governance.	1	1
334	71	247	f	2020-12-09	Students will be able to analyze, synthesize, think critically, solve problems and make decisions.	3	1
335	71	248	f	2020-12-09	Students will be able to articulate and apply a public service perspective	4	1
336	71	249	f	2020-12-09	Students will be able to communicate and interact productively with a diverse and changing workforce and citizenry	5	1
341	74	254	f	2020-12-10	Mastery of discipline content.	1	1
342	74	255	f	2020-12-10	Proficiency in analyzing, evaluating, & synthesizing information.	2	1
343	75	256	f	2020-12-10	Proficiency in analyzing, evaluating, & synthesizing information.	1	1
344	80	257	f	2020-12-10	Students will...	1	1
347	78	259	f	2020-12-10	Students will...	1	1
345	79	258	f	2020-12-10	Students will...	1	1
349	1	261	f	2020-12-15	Communicate with variety of audiences.	2	1
348	78	260	f	2020-12-10	Students will...	2	1
350	81	262	f	2021-01-19	Students will...	1	1
351	1	7	f	2021-01-20	Design and implement software using reliable engineering techniques.	3	1
6	3	6	f	2020-09-28	Students will have the competence to examine a problem and design a methodology to achieve a solution.	1	2
352	3	7	f	2021-01-20	Design and implement software using reliable engineering techniques.	2	1
353	82	244	f	2021-01-20	Gain proficiency in machine learning.	1	1
354	82	263	f	2021-02-17	Demonstrate machine learning.	2	1
\.


--
-- Data for Name: makeReports_slostatus; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_slostatus" (id, status, "sloIR_id", override) FROM stdin;
3	Not Met	5	f
6	Met	6	t
7	Met	7	f
5	Met	3	f
2	Met	4	f
8	Met	8	t
9	Met	9	t
10	Met	10	t
11	Partially Met	11	t
1	Met	1	f
12	Partially Met	12	t
13	Met	13	t
14	Unknown	14	t
15	Unknown	15	t
16	Unknown	16	t
17	Unknown	17	t
18	Met	18	t
4	Met	2	f
19	Met	19	t
20	Met	20	t
21	Partially Met	21	t
22	Partially Met	22	t
23	Met	23	t
24	Unknown	24	t
25	Met	39	f
26	Met	40	f
27	Partially Met	330	t
28	Met	332	t
29	Met	333	t
30	Met	334	t
31	Met	335	t
32	Met	336	t
37	Met	341	t
38	Met	342	t
39	Met	331	t
40	Met	343	t
42	Met	346	f
43	Met	347	t
44	Met	348	t
41	Met	345	f
\.


--
-- Data for Name: makeReports_slostostakeholder; Type: TABLE DATA; Schema: public; Owner: aaadb
--

COPY public."makeReports_slostostakeholder" (id, text, report_id) FROM stdin;
1	<p style="margin-right: 18.75pt; margin-left: 5.6pt;">In regard to our SLOs, all faculty  and member of our External Advisory Board (EAB) are aware of our SLOs. Our SLOs  are on our program website so that they are publically available. <br>  <br>  Results are relayed to the unit at least once per year in a departmental  faculty meeting where discussion revolves around how to better assess and  achieve the various SLOs. Our assessment report will be relayed to our  instructors yearly. Further, once each semester our External Advisory Board  (EAB) meets. We ensure that assessment is part of our conversation with them at  least once per academic year, twice if necessary. Our SLOs were re-reviewed  with our EAB in our Fall 2019 meeting, and no changes were requested.</p>	2
2	<p>Website<br></p>	4
3	<p style="margin-right: 0in; margin-left: .25in; line-height: normal;"><i><span style="">SLOs A-F were created by the subject-matter experts  within the department.&nbsp; These SLOs where  then reviewed by the entire department and reviewed annually at the August  faculty meeting.&nbsp; Moreover, the SLOs will  be communicated and discussed to our newly-formed advisory board at every  spring meeting.</span></i></p>	5
4	<p>The B.A. in General Science is an interdisciplinary degree currently  administered by the Dean’s office in the College of Arts &amp; Sciences.&nbsp; The degree first appeared in the 1948  University of Omaha Undergraduate Catalog.&nbsp;  Students complete 49-50 required hours of Biology, Chemistry, Geology,  Mathematics, and Physics, and an additional 12 hours of elective courses in  Biology, Chemistry, Geology, or Physics.&nbsp;  The stakeholders in this program are students, faculty (broadly  speaking), and advisors.&nbsp; There are  currently 20 students in the program, almost all of which are part of a  pre-professional group (e.g. pre-nursing, pre-optometry, pre-pharmach,  pre-physician’s assistant).&nbsp; Student  learning outcomes are communicated to students&nbsp;  online through the undergraduate catalog and by advisors during the  advising process.&nbsp; Student learning  outcomes are communicated to faculty (broadly speaking) through the department  chairs of the member departments who participate on the advisory committee for  General Science.</p>	6
5	<p style="margin-right: 0in; margin-left: .25in; line-height: normal;"><i><span style="">SLOs A-F were created by the subject-matter experts  within the department.&nbsp; These SLOs where  then reviewed by the entire department and reviewed annually at the August  faculty meeting.&nbsp; Moreover, the SLOs will  be communicated and discussed to our newly-formed advisory board at every  spring meeting.</span></i></p>	7
6	<p>Environmental Studies is an interdisciplinary program  supported by the Departments of Biology, Chemistry, and Geography/Geology. A  coordinating committee consisting of two members from each of the supporting  departments, including all three department chairs, helps oversee the program.  The SLOs were developed in consultation with this committee. During development  we relied on discipline specific criteria as well as more generalized  discussions of the skills valued by employers (e.g. <a href="https://www.aacu.org/leap/students/employers-top-ten">https://www.aacu.org/leap/students/employers-top-ten</a>,  <a href="https://www.forbes.com/sites/sergeiklebnikov/2015/07/06/what-employers-are-looking-for-when-hiring-recent-college-grads/#1ae4892f1af3">https://www.forbes.com/sites/sergeiklebnikov/2015/07/06/what-employers-are-looking-for-when-hiring-recent-college-grads/#1ae4892f1af3</a>)  and adapted these to the careers our graduates seek to pursue.&nbsp; The coordinating committee communicate SLOs  to relevant faculty in their units. SLOs are communicated to administration and  university committees via periodic reports such as this. Finally, SLOs are  posted on the Environmental Studies website where they are available to  students and other stakeholders.</p>	9
7	<p>-Student learning outcomes are included in course syllabi.</p><p>    </p><p>-Our program revises SLOs as needed based on student  feedback (via ACE and TABS course evaluations and individual discussions with  students in our classes, with student advisees, and with other faculty members).</p>	10
8	<p style="margin-left: .75in;">The  geography faculty developed the student learning outcomes during an internal  program review and update process.&nbsp; As a  part of this ongoing process, each program assessment report of Student  learning outcomes is presented to the faculty for both their information but  also to review.&nbsp; The review focuses on  the process and method of assessment meets as it reflects on the students’  learning in the program.&nbsp;</p>	12
9	<p>Student learning outcomes will be included in the syllabi of  &nbsp;one course in each of the seven core  areas of concentration (eight, if we include math majors who do not declare an  area of concentration). This course is indicated in Section II, Point 5 below.</p>	14
10	<p>Course syllabi will contain description of relevant SLO  concepts. Recruitment materials and program website will highlight SLO goals  through descriptions of program targeted to prospective and current students.</p>	18
11	<p>1. Included in the course outlines (syllabi) for all required courses taught within the department.</p><p>2. Available on the departmental website.</p>	19
12	<p style="line-height: normal;">The  Student Learning Outcomes represent the four general categories of the  Interstate Teacher Assessment and Support Consortium (InTASC) Standards as  established by the Council of Chief State School Officers. The InTASC Standards  are the criteria for Standard One and are also represented in Standard Three of  the Council of Accreditation of Educator Preparation (CAEP) as well as Standard  One of the former of the National Council for Accreditation of Teachers  Educators (NCATE).&nbsp; The educator preparation  programs within the College of Education are currently accredited through NCATE  and will be seeking CAEP accreditation in the next accreditation review.&nbsp; Each of the four general InTASC categories  has two or more subscales for a total of 10 InTASC Standards. The special  education programs also utilize the seven Council for Exceptional Children  standards that align with the InTASC Standards. </p><p style="line-height: normal;">&nbsp;</p><p style="line-height: normal;">The  College of Education website (CAEP 8 Annual Reporting Measures – Impact  Measures – Indicators of Teaching Effectiveness (Component 4.2).&nbsp; Data related to the SLOs are also published  in here. </p><p>            </p><p style="line-height: normal;"><a href="https://www.unomaha.edu/college-of-education/about/caep-annual-reporting-measures.php">https://www.unomaha.edu/college-of-education/about/caep-annual-reporting-measures.php</a></p>	20
27	<p>At this point, SLO’s are not communicated to stakeholders;  however CMST faculty have discussed including SLO’s on promotional material for  prospective students, as well as including them on academic advising  worksheets.</p>	36
30	<p>SLOs are published on the School of Music website.</p><p>Students are apprised of the SLOs in course syllabi.</p><p>Omaha area teachers assess our students in practicum and student teaching.</p>	39
13	<p>Stakeholders will review the 2018 data in a meeting during the spring, 2019 semester. An assessment mini grant focused on the most meaningful and effective partnerships with the stakeholders is planned for the spring, 2019. The assessment reports will be shared with them at that time. Further, the intent of the mini grant is to engage the stakeholders in discussion regarding how the existing body, which is large and encompasses a broad representation of stakeholders, might be restructured to allow for a more efficient and effective partnership. Through the processes of engaging the current body of stakeholders in a facilitated discussion, the intended outcome is for smaller for numbers of stakeholders to work with the program members to identify strategic, focused stakeholder ‘sub-groups’ that can partner in the creation and analysis of assessment data, including that linked to UG SLOs.<br></p>	22
14	<p style="line-height: normal;"><span style="">The  InTASC Standards (Student Learning Outcomes) appear on:</span><br></p><p style="line-height: normal;"><span style="">1.&nbsp; All course syllabi for Special Education and  Communication Disorders and Teacher Education Department courses required in  the Early Childhood Inclusive program of study.&nbsp;  </span></p><p style="line-height: normal;"><span style="">2.  Individual items on the Clinical Practice Evaluation and Strategies Project  (see section II).&nbsp; Community stakeholders  from surrounding P-12 schools are involved in each of the assessment measures,  assessing candidates in the Clinical Practice Evaluation and Strategies  Project.&nbsp; In addition, the Clinical  Practice Evaluation was developed and adopted by the Nebraska Department of  Education through a process which solicited input from P-12 educators and other  educator preparation programs across Nebraska.&nbsp;  P-12 educators were also involved in the creation of the Strategies  Project. </span></p><p style="line-height: normal;"><span style="">3.  Individual items on the Employer and Alumni Satisfaction Surveys (indirect  measures – see section II-B) . </span></p><p style="line-height: normal;"><span style="">4.  The College of Education website (CAEP 8 Annual Reporting Measures – Impact  Measures –Indicators of Teaching Effectiveness - Component 4.2).&nbsp; Data related to the SLOs are also published  here. </span></p><p>                            </p><p style="line-height: normal;"><a href="https://www.unomaha.edu/college-of-education/about/caep-annual-reporting-measures.php"><span style="">https://www.unomaha.edu/college-of-education/about/caep-annual-reporting-measures.php</span></a><span style=""></span></p>	23
15	<p style="line-height: normal;"><span style="">The  InTASC Standards (Student Learning Outcomes) appear on:</span></p><p style="line-height: normal;"><span style="">1.&nbsp; All course syllabi for Teacher Education  Department courses required in the Elementary Education program of study. </span></p><p style="line-height: normal;"><span style="">&nbsp;</span></p><p style="line-height: normal;"><span style="">2.  Individual items on the Clinical Practice Evaluation and Strategies Project  (see section II).&nbsp; Community stakeholders  from surrounding P-12 schools are involved in each of the assessment measures,  assessing candidates in the Clinical Practice Evaluation and Strategies  Project.&nbsp; In addition, the Clinical  Practice Evaluation was developed and adopted by the Nebraska Department of  Education through a process which solicited input from P-12 educators and other  educator preparation programs across Nebraska.&nbsp;  P-12 educators were also involved in the creation of the Strategies  Project. </span></p><p style="line-height: normal;"><span style="">&nbsp;</span></p><p style="line-height: normal;"><span style="">3.  Individual items on the Employer and Alumni Satisfaction Surveys (indirect  measures – see section II-B). </span></p><p style="line-height: normal;"><span style="">&nbsp;</span></p><p style="line-height: normal;"><span style="">4.  The College of Education website (CAEP 8 Annual Reporting Measures – Impact  Measures – Indicators of Teaching Effectiveness - Component 4.2).&nbsp; Data related to the SLOs are also published  in here. </span></p><p>                                </p><p style="line-height: normal;"><a href="https://www.unomaha.edu/college-of-education/about/caep-annual-reporting-measures.php"><span style="">https://www.unomaha.edu/college-of-education/about/caep-annual-reporting-measures.php</span></a><span style=""></span></p>	24
24	<p style="margin-left: .75in;"><span style="line-height: 115%;">The  assessment review committee, which includes program faculty and staff, convenes  each semester to review SLOs. The committee gathers feedback from additional  stakeholders to assist in shaping the SLOs. These stakeholders included program  alumni, currently enrolled/graduating senior students, and internships  providers in the community. </span></p><p style="margin-left: .75in;"><span style="line-height: 115%;">Alumni  continue to share their views about the program and the job market to the  committee via social media/email. Currently enrolled/graduating seniors are  informally consulted throughout the semester</span><span style="line-height: 115%;"> and  formally though</span><span style="line-height: 115%;"> course evaluations and exit interviews conducted by our  Academic Advisor. Our Student Services Associate consults with Internship  providers in-person and via email/ phone regarding student performance and essential  skills needed for job placement. </span></p><p>        </p><p style="margin-left: .75in;"><span style="line-height: 115%;">The SLOs  are included in course syllabi required for the program. SLOs are also shared  with students during advising sessions and with stakeholders via email/phone.&nbsp;</span></p>	33
28	<p>At this point, SLOs are not communicated to stakeholders in  a universal manner. However, JMC faculty members have discussed including SLOs  on promotional materials for prospective students, as well as including them on  academic advising worksheets.</p>	37
29	<p>At this point, SLOs are not communicated to stakeholders in  a universal manner. However, JMC faculty members have discussed including SLOs  on promotional materials for prospective students, as well as including them on  academic advising worksheets.</p>	38
31	<p>SLOs are published on the School of Music website.</p><p>Students are apprised of the SLOs in course syllabi.</p>	40
32	<p>The mission of the Urban Studies program is to: “Prepare students to lead and engage communities in processes and institutions to improve the quality of life through an appreciation of the interactive effects among human, built and natural systems in urban areas.” Students concentrate in one of three program tracks that reflect the mission statement – the built urban environment, human systems, and the urban natural environment. Mission statements and tracks are described on website. SLOs are included in course syllabi for the Core Seminar (UBNS 8000) taken at beginning of program. The SLOs are described in the Urban Studies website and included in student advising sessions.<br></p>	41
33	<p>A committee of professors representing both those solely in academic positions and those who have held public or private sector criminal justice-related positions determined and reviews SLOs</p><p>Student learning outcomes are</p><p>1) included in the course outlines (syllabi) for all required courses taught within the department</p><p>2) shared during School faculty meetings</p>	42
16	<p style="line-height: normal;"><span style="">The  InTASC Standards (Student Learning Outcomes) appear on:</span></p><p style="line-height: normal;"><span style="">1.&nbsp; All course syllabi for Teacher Education  Department courses required in the Elementary Education program of study. </span></p><p style="line-height: normal;"><span style="">&nbsp;</span></p><p style="line-height: normal;"><span style="">2.  Individual items on the Clinical Practice Evaluation and Strategies Project  (see section II).&nbsp; Community stakeholders  from surrounding P-12 schools are involved in each of the assessment measures,  assessing candidates in the Clinical Practice Evaluation and Strategies  Project.&nbsp; In addition, the Clinical  Practice Evaluation was developed and adopted by the Nebraska Department of  Education through a process which solicited input from P-12 educators and other  educator preparation programs across Nebraska.&nbsp;  P-12 educators were also involved in the creation of the Strategies  Project. </span></p><p style="line-height: normal;"><span style="">&nbsp;</span></p><p style="line-height: normal;"><span style="">3.  Individual items on the Employer and Alumni Satisfaction Surveys (indirect  measures – see section II-B). </span></p><p style="line-height: normal;"><span style="">&nbsp;</span></p><p style="line-height: normal;"><span style="">4.  The College of Education website (CAEP 8 Annual Reporting Measures – Impact  Measures – Indicators of Teaching Effectiveness - Component 4.2).&nbsp; Data related to the SLOs are also published  in here. </span></p><p>                                </p><p style="line-height: normal;"><a href="https://www.unomaha.edu/college-of-education/about/caep-annual-reporting-measures.php"><span style="">https://www.unomaha.edu/college-of-education/about/caep-annual-reporting-measures.php</span></a><span style=""></span></p>	25
17	<p>Stakeholders are involved/informed through: a) formal conversations  about the program, its purpose and focus points led by library science faculty  at professional development sessions for a diverse array of library  organizations in the Omaha Metro area, Nebraska, and the Midwest region. The  sessions include a Question and Answer (Q&amp;A) session about curriculum and  other aspects of that program that engage candidates with their community; and  b) Strong relationships and systematic communication with school, public,  academic and special library entities that host candidates in their final  practicum experience and evaluate candidates based on student learning outcomes  and other program emphases.</p>	26
18	<p>In general, all three SLO's are communicated with a variety of methods such as through the academic and faculty advisors, within AH courses &amp; the AH Thesis semester process, through the course syllabi &amp; through presentations such as senior thesis presentations &amp; talks throughout the school year.</p>	27
19	<p>Students are given questionnaires at the beginning of some  of our classes.&nbsp; They frequently list  desired goals and expectations for what they want to learn from our  classes.&nbsp; These goals and expectations  often resonate with SLOs listed above, particularly #1, #2 and #3.&nbsp; They want to learn the vocabulary of  craft.&nbsp; They wish to develop and revise a  portfolio of polished work.&nbsp; They want to  be able to develop original ideas about poetry before an audience of their  peers.&nbsp; The internship process involves  outside stakeholders providing an end-of-internship evaluation.&nbsp; For example, internships with literary  publishers such as The Backwater Press and 13th Floor evaluate  interns’ performance. &nbsp;The expectation is  for students to be proficient in the above outcomes in literary craft,  vocabulary, speaking abilities involving contemporary literature.&nbsp;&nbsp;</p>	28
20	<p>In general, all three SLO’s are communicated with a variety of methods such as through the academic and faculty</p><p>advisors, within studio courses through the course syllabi and through presentations such as senior exhibitions</p><p>and talks throughout the school year.</p>	29
23	<p>Creation/Review: SLOs were initially developed by an ad hoc Assessment Committee in AY 2017-18. Creation and&nbsp;<span style="">review of SLOs will be coordinated by the Assistant Director of Academic Affairs in partnership with the DCS Director,&nbsp;</span><span style="">DCS staff, instructors, and faculty stakeholder groups (including members of the FAPC). Future assessment plans&nbsp;</span><span style="">include a larger group of stakeholders including students and the development of a standing DCS Assessment&nbsp;</span><span style="">Committee to include UNO faculty from departments/units across campus.</span></p><p>Communication: The SLOs were communicated to the students enrolled in the capstone course via the GDRH 3010&nbsp;<span style="">syllabus. With a proposal to modify the BMS curriculum and essential learning outcomes (see BMS Learning&nbsp;</span><span style="">Outcomes, Curriculum and Degree Structure Update attached at the end of this document), SLOs have not been&nbsp;</span><span style="">shared in the catalog or website until the changes have final approval. A systematic communication plan will be&nbsp;</span><span style="">developed to inform all stakeholders of the updated assessment plans and program outcomes.</span></p>	32
21	<p>In general, all three SLO’s are communicated with a variety of methods such as through the academic and faculty&nbsp;<span style="">advisors, within studio courses through the course syllabi and through presentations such as senior exhibitions&nbsp;</span><span style="">and talks throughout the school year.</span></p>	30
22	<p style="margin-left: 4.5pt;"><span style="line-height: 115%;">The theatre  program is currently working on curriculum changes that will have a direct  impact on our assessment procedures when completed. We are developing a  capstone course that will serve as much stronger barometer in evaluating  seniors.&nbsp; Currently, these assessments  are split over five courses which inherently include our four SLO’s.&nbsp; Students and faculty alike, discuss these  SLO’s at the beginning of each course so the students are fully aware of the  expectations and objectives for the course.&nbsp;  In turn, these SLO’s currently serve these five individual courses well  as evaluations of the Rubrics provide direct assessment of these courses but  not necessarily that of the entire program.&nbsp;  A capstone class/project will enable a true assessment of seniors abilities  upon graduation.</span></p>	31
25	<p style="margin-left: .75in;">&nbsp;</p><p style="margin-left: 0in;">The  SLOs are adopted by the faculty of the department, after consultation with the  department’s Curriculum Advisory Committee, an industry advisory body that  meets with ISQA faculty twice a year.&nbsp;  The adopted SLOs are posted on the IS&amp;T website, as required by  ABET.</p><p>        </p><p style="margin-left: 0in;"><a href="https://www.unomaha.edu/college-of-information-science-and-technology/information-systems-and-quantitative-analysis/undergraduate/student-objectives.php">https://www.unomaha.edu/college-of-information-science-and-technology/information-systems-and-quantitative-analysis/undergraduate/student-objectives.php</a></p>	34
26	<p>At this point, SLO’s are not communicated to stakeholders;  however CMST faculty have discussed including SLO’s on promotional material for  prospective students, as well as including them on academic advising  worksheets.</p>	35
34	<p>A committee of professors representing both those solely in academic positions and those who have held public or private sector criminal justice-related positions determined and reviews SLOs</p><p>Student learning outcomes are</p><p>1) included in the course outlines (syllabi) for all required courses taught within the department</p><p>2) shared during School faculty meetings</p>	43
35	<p>The SLOs were developed when the School of Criminology and  Criminal Justice (SCCJ) was on the 2013-2014 assessment cycle. During this time  feedback was solicited from all faculty in the SCCJ. &nbsp;</p>	44
36	<p>SLOs are now reported both in the Student Handbook and on  the program Website, both publicly available.</p>	45
37	<p style="margin-left: 9.0pt;"><span style="line-height: 115%;">The SLOs reflect the core propositions of the  National Board for Professional Teaching Standards (NBPTS). The NBPTS recognize  accomplished teachers and generate ongoing improvements within P-12 schools and  the field of education.&nbsp; </span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">&nbsp;</span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">The NBPTS are embedded in all assessment  rubrics and community stakeholders were involved in the creation of several of  the assessments included in this report.&nbsp;  </span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">&nbsp;</span></p><p>                </p><p style="margin-left: 9.0pt;">NBPTS  appear on all TED syllabi and on the program website:&nbsp;&nbsp; <a href="https://www.unomaha.edu/college-of-education/teacher-education/graduate/endorsements/">https://www.unomaha.edu/college-of-education/teacher-education/graduate/endorsements/</a>&nbsp;&nbsp;&nbsp; (see lower left margin)</p>	46
38	<p style="margin-left: 9.0pt;"><span style="line-height: 115%;">The SLOs reflect the core propositions of the  National Board for Professional Teaching Standards (NBPTS). The NBPTS recognize  accomplished teachers and generate ongoing improvements within P-12 schools and  the field of education.&nbsp; </span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">&nbsp;</span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">NBPTS are embedded in all assessment  rubrics and community stakeholders were involved in the creation of several of  the assessments included in this report.&nbsp;  </span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">&nbsp;</span></p><p>                </p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">NBPTS appear on all TED syllabi and  are on the program website:&nbsp;&nbsp; </span><a href="https://www.unomaha.edu/college-of-education/teacher-education/graduate/endorsements/"><span style="line-height: 115%;">https://www.unomaha.edu/college-of-education/teacher-education/graduate/endorsements/</span></a><span style="line-height: 115%;">&nbsp;&nbsp;&nbsp;  (see lower left margin)</span></p>	47
39	<p style="margin-left: 9.0pt;"><span style="line-height: 115%;">The SLOs reflect the core propositions of the  National Board for Professional Teaching Standards (NBPTS). The NBPTS recognize  accomplished teachers and generate ongoing improvements within P-12 schools and  the field of education.&nbsp; </span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">&nbsp;</span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">NBPTS are embedded in all assessment  rubrics and community stakeholders were involved in the creation of several of  the assessments included in this report.&nbsp;  </span></p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">&nbsp;</span></p><p>                </p><p style="margin-left: 9.0pt;"><span style="line-height: 115%;">NBPTS appear on all TED syllabi and  are on the program website:&nbsp;&nbsp; </span><a href="https://www.unomaha.edu/college-of-education/teacher-education/graduate/endorsements/"><span style="line-height: 115%;">https://www.unomaha.edu/college-of-education/teacher-education/graduate/endorsements/</span></a><span style="line-height: 115%;">&nbsp;&nbsp;&nbsp;  (see lower left margin)</span></p>	48
40	<p style="margin-left: 4.5pt;">Students  and program completers were involved in the original creation of the DBDM  project and rubric through a survey that was sent to 11 current students or  program completers in 2017.&nbsp; Five  responses were received and revisions were made to clarify rubric items based  on feedback. </p><p style="margin-left: 4.5pt;">&nbsp;</p><p>        </p><p style="margin-left: 4.5pt;">Content  validity of the DBDM project was completed through a panel of experts review  during May/June 2018.&nbsp; The DBDM project  information and rubric feedback form was completed by 6 of the 11 special  education leaders who had volunteered to review the project either by  responding at a meeting or to a follow-up email.&nbsp; A Content Validity Index (CVI) of 0.98 was  established through this process.</p>	49
41	<p style="margin-left: 4.5pt;">Students  and program completers were involved in the original creation of the DBDM  project and rubric through a survey that was sent to 11 current students or  program completers in 2017.&nbsp; Five  responses were received and revisions were made to clarify rubric items based  on feedback. </p><p style="margin-left: 4.5pt;">&nbsp;</p><p>        </p><p style="margin-left: 4.5pt;">Content  validity of the DBDM project was completed through a panel of experts review  during May/June 2018.&nbsp; The DBDM project  information and rubric feedback form was completed by 6 of the 11 special  education leaders who had volunteered to review the project either by  responding at a meeting or to a follow-up email.&nbsp; A Content Validity Index (CVI) of 0.98 was  established through this process.</p>	50
42	<p style="margin-left: .75in;"><span style="line-height: 115%;">The SLOs were primarily developed by  the Doctoral Program Committee that consists of representation from faculty  mentors in the Department of Biomechanics and School of Health &amp;  Kinesiology. As a first step in engaging additional stakeholders, the SLOs will  be communicated through a newly developed Canvas course for enrolled doctoral  students and their mentors in the Spring of 2019.&nbsp;</span></p>	51
43	<p>These SLOs were created in accordance with the common  graduate SLO’s for masters programs.&nbsp;  Review of SLOs are primarily conducted by graduate faculty.&nbsp; Our current SLO’s are not currently  communicated to stakeholders, but are available if requested.</p>	52
44	<p>We have recently created the Athletic Training Program  Advisory Committee.&nbsp; This group includes  faculty, clinical instructors and alumni working in the field to advise and  review SLOs. As part of our CAATE accreditation, they require us to make  outcome data available on our website and are available for public  consumption.&nbsp;&nbsp;</p>	53
45	<p>To date, external stakeholders (alumni, etc.) have not been involved in the creation or revision of our SLOs. Current graduate students have been involved in the creation/review of SLOs via their representation on our department’s Graduate Program Committee, which is the body that has approved SLOs and has hear our assessment committees reports and proposals along the way. SLOs have been communicated to stakeholders via our department’s Graduate Student Handbook and website as well as on a growing number of course syllabi.<br></p>	8
46	<p><i><span style="color: red;">UPDATE (April 2019): SLOs were added to the department  website during the Spring 2019 Semester: https://www.unomaha.edu/college-of-arts-and-sciences/mathematics/academics/graduate.php</span> </i></p><p>    </p><p><i><span style="color: red;">There is a motion scheduled for the April 15th  meeting of the department’s graduate committee which would require the  inclusion of SLOs on each class syllabus distributed to students at the  beginning of each course.&nbsp;</span></i></p>	58
47	<p><i><span style="color: red;">UPDATE (April 2019): SLOs were added to the department  website during the Spring 2019 Semester: https://www.unomaha.edu/college-of-arts-and-sciences/mathematics/academics/graduate.php</span> </i></p><p>    </p><p><i><span style="color: red;">There is a motion scheduled for the April 15th  meeting of the department’s graduate committee which would require the  inclusion of SLOs on each class syllabus distributed to students at the  beginning of each course.&nbsp;</span></i></p>	59
48	<p><i><span style="color: red;">UPDATE (April 2019): SLOs were added to the department  website during the Spring 2019 Semester:  https://www.unomaha.edu/college-of-arts-and-sciences/mathematics/academics/graduate.php</span> </i></p><p>    </p><p><i><span style="color: red;">There is a motion scheduled for the April 15th  meeting of the department’s graduate committee which would require the  inclusion of SLOs on each class syllabus distributed to students at the  beginning of each course.&nbsp;</span></i></p>	60
49	<p>SLOs are communicated to students during their Orientation  and initial advising session. SLOs are revisited as students prepare for each  of the program’s milestones –poster presentation (after at least 9 credit  hours, at the Annual MALT Colloquium Student Poster Panel), Portfolio  submission and presentation (at the end of their second to last semester in the  Program), and Comprehensive Exams (last semester). SLOs will be explicitly  articulated as such in the MALT Program Handbook, and communicated to the  public through the website.</p><p>    </p><p>Because our SLOs reflect the ACTFL Standards used nationwide  in the teaching of foreign languages, stakeholders have been indirectly  involved in the creation of SLOs. In addition, MALT GPC and faculty seek  internship opportunities for students to enhance their training, thus engaging  with local stakeholders in a productive interaction.</p>	67
50	<p style="margin-left: .75in;">SLO’s  are communicated to all students in their Professions in Psychology  course.&nbsp; In addition, the SLOs and  rubrics are on our website.</p>	62
51	<p style="margin-left: .75in;">The SLO  are discussed in our Psychology 8000 course (a first semester course required  of all students).&nbsp; We are in the process  of including them on our Graduate Web page so that they will be available to  prospective students and the public.&nbsp;  Currently the rubrics are on our webpage and readily available to students.</p>	63
52	<p>The SLOs are derived from the accreditation standards for  Association for Behavior Analysis International. In addition they represent  standards from the Behavior Analysis Certification Board. These were determined  following a day-long retreat held in March 2018 of stakeholders that included  current program faculty, other Psychology department faculty, Special Education  faculty member, current students and alumni currently working in the field.  They were subsequently discussed at our ABA program committee meetings which include  our program faculty, representatives from other Psychology department faculty  and current student representatives.&nbsp;</p>	61
53	<p>For faculty – we have monthly faculty meetings for the I/O  area and discuss SLOs there</p><p>For site supervisor – they receive written communication  about the survey, purpose, and so on. In addition, they may schedule a meeting  with one of the faculty</p><p>        </p><p>Students hear about these SLOs through first year  orientation and regular meetings with their advisor throughout the program</p>	64
54	<p style="margin-left: .75in;">SLOs  are reflective of the National Association of School Psychologists’ (NASP)  Standards for Graduate Preparation (2010) and Model for Comprehensive and  Integrated School Psychological Services (2010).&nbsp; NASP is our accrediting body.&nbsp; Our program has added an 11th SLO  focusing on professional work characteristics because of the importance of  professional behavior and interpersonal skills for our profession.&nbsp; Our stakeholders (e.g., employers,  community-based field supervisors, alumni) provide regular feedback on our  students’ attainment of our SLOs via surveys and student evaluations.&nbsp; </p><p style="margin-left: .75in;">&nbsp;</p><p style="margin-left: .75in;">SLOs are communicated through our program handbook, program website, and  evaluation materials. In addition, each syllabus of our core School Psychology  courses lists are SLOs as well as specific course objectives relevant for each  SLO. </p><p style="margin-left: .75in;">&nbsp;</p><p>                </p><p style="margin-left: .75in;">At  least once annually, a group of stakeholders (i.e., field-based supervisors)  comes together to review program and field work requirements for our students  and provide feedback to ensure that program objectives are related to career  expectations.&nbsp;&nbsp;</p>	65
55	<p style="margin-left: .75in;">SLOs  are reflective of the National Association of School Psychologists’ (NASP)  Standards for Graduate Preparation (2010) and Model for Comprehensive and  Integrated School Psychological Services (2010).&nbsp; NASP is our accrediting body.&nbsp; Our program has added an 11th SLO  focusing on professional work characteristics because of the importance of  professional behavior and interpersonal skills for our profession.&nbsp; Our stakeholders (e.g., employers,  community-based field supervisors, alumni) provide regular feedback on our  students’ attainment of our SLOs via surveys and student evaluations.&nbsp; </p><p style="margin-left: .75in;">&nbsp;</p><p style="margin-left: .75in;">SLOs are communicated through our program handbook, program website, and  evaluation materials. In addition, each syllabus of our core School Psychology  courses lists are SLOs as well as specific course objectives relevant for each  SLO. </p><p style="margin-left: .75in;">&nbsp;</p><p>                </p><p style="margin-left: .75in;">At  least once annually, a group of stakeholders (i.e., field-based supervisors)  comes together to review program and field work requirements for our students  and provide feedback to ensure that program objectives are related to career  expectations.&nbsp;&nbsp;</p>	66
56	SLOs are discussed annually with the CS Community Advisory Committee.	69
57	<p>N/A</p>	71
58	<p>SLOs are communicated to stakeholders on the program website...</p>	80
59	<p>SLOs are communicated to stakeholders on the program website...</p>	79
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 132, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 12, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 33, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: makeReports_announcement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_announcement_id_seq"', 1, false);


--
-- Name: makeReports_assessment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_assessment_id_seq"', 262, true);


--
-- Name: makeReports_assessmentaggregate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_assessmentaggregate_id_seq"', 18, true);


--
-- Name: makeReports_assessmentdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_assessmentdata_id_seq"', 41, true);


--
-- Name: makeReports_assessmentsupplement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_assessmentsupplement_id_seq"', 1, false);


--
-- Name: makeReports_assessmentversion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_assessmentversion_id_seq"', 412, true);


--
-- Name: makeReports_assessmentversion_supplements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_assessmentversion_supplements_id_seq"', 1, false);


--
-- Name: makeReports_college_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_college_id_seq"', 8, true);


--
-- Name: makeReports_dataadditionalinformation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_dataadditionalinformation_id_seq"', 1, true);


--
-- Name: makeReports_decisionsactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_decisionsactions_id_seq"', 35, true);


--
-- Name: makeReports_degreeprogram_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_degreeprogram_id_seq"', 83, true);


--
-- Name: makeReports_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_department_id_seq"', 26, true);


--
-- Name: makeReports_gradedrubric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_gradedrubric_id_seq"', 82, true);


--
-- Name: makeReports_gradedrubricitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_gradedrubricitem_id_seq"', 18, true);


--
-- Name: makeReports_gradgoal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_gradgoal_id_seq"', 5, true);


--
-- Name: makeReports_graph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_graph_id_seq"', 1, true);


--
-- Name: makeReports_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_profile_id_seq"', 12, true);


--
-- Name: makeReports_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_report_id_seq"', 82, true);


--
-- Name: makeReports_reportsupplement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_reportsupplement_id_seq"', 3, true);


--
-- Name: makeReports_requiredfieldsetting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_requiredfieldsetting_id_seq"', 1, false);


--
-- Name: makeReports_resultcommunicate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_resultcommunicate_id_seq"', 8, true);


--
-- Name: makeReports_rubric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_rubric_id_seq"', 5, true);


--
-- Name: makeReports_rubricitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_rubricitem_id_seq"', 16, true);


--
-- Name: makeReports_slo_gradGoals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_slo_gradGoals_id_seq"', 146, true);


--
-- Name: makeReports_slo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_slo_id_seq"', 263, true);


--
-- Name: makeReports_sloinreport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_sloinreport_id_seq"', 354, true);


--
-- Name: makeReports_slostatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_slostatus_id_seq"', 44, true);


--
-- Name: makeReports_slostostakeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaadb
--

SELECT pg_catalog.setval('public."makeReports_slostostakeholder_id_seq"', 59, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: makeReports_announcement makeReports_announcement_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_announcement"
    ADD CONSTRAINT "makeReports_announcement_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_assessment makeReports_assessment_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessment"
    ADD CONSTRAINT "makeReports_assessment_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_assessmentaggregate makeReports_assessmentaggregate_assessmentVersion_id_key; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentaggregate"
    ADD CONSTRAINT "makeReports_assessmentaggregate_assessmentVersion_id_key" UNIQUE ("assessmentVersion_id");


--
-- Name: makeReports_assessmentaggregate makeReports_assessmentaggregate_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentaggregate"
    ADD CONSTRAINT "makeReports_assessmentaggregate_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_assessmentdata makeReports_assessmentdata_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentdata"
    ADD CONSTRAINT "makeReports_assessmentdata_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_assessmentsupplement makeReports_assessmentsupplement_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentsupplement"
    ADD CONSTRAINT "makeReports_assessmentsupplement_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_assessmentversion_supplements makeReports_assessmentve_assessmentversion_id_ass_6b09c182_uniq; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion_supplements"
    ADD CONSTRAINT "makeReports_assessmentve_assessmentversion_id_ass_6b09c182_uniq" UNIQUE (assessmentversion_id, assessmentsupplement_id);


--
-- Name: makeReports_assessmentversion makeReports_assessmentversion_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion"
    ADD CONSTRAINT "makeReports_assessmentversion_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_assessmentversion_supplements makeReports_assessmentversion_supplements_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion_supplements"
    ADD CONSTRAINT "makeReports_assessmentversion_supplements_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_college makeReports_college_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_college"
    ADD CONSTRAINT "makeReports_college_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_dataadditionalinformation makeReports_dataadditionalinformation_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_dataadditionalinformation"
    ADD CONSTRAINT "makeReports_dataadditionalinformation_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_decisionsactions makeReports_decisionsactions_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_decisionsactions"
    ADD CONSTRAINT "makeReports_decisionsactions_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_decisionsactions makeReports_decisionsactions_sloIR_id_key; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_decisionsactions"
    ADD CONSTRAINT "makeReports_decisionsactions_sloIR_id_key" UNIQUE ("sloIR_id");


--
-- Name: makeReports_degreeprogram makeReports_degreeprogram_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_degreeprogram"
    ADD CONSTRAINT "makeReports_degreeprogram_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_department makeReports_department_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_department"
    ADD CONSTRAINT "makeReports_department_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_gradedrubric makeReports_gradedrubric_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradedrubric"
    ADD CONSTRAINT "makeReports_gradedrubric_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_gradedrubricitem makeReports_gradedrubricitem_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradedrubricitem"
    ADD CONSTRAINT "makeReports_gradedrubricitem_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_gradgoal makeReports_gradgoal_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradgoal"
    ADD CONSTRAINT "makeReports_gradgoal_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_graph makeReports_graph_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_graph"
    ADD CONSTRAINT "makeReports_graph_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_profile makeReports_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_profile"
    ADD CONSTRAINT "makeReports_profile_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_profile makeReports_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_profile"
    ADD CONSTRAINT "makeReports_profile_user_id_key" UNIQUE (user_id);


--
-- Name: makeReports_report makeReports_report_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_report"
    ADD CONSTRAINT "makeReports_report_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_report makeReports_report_rubric_id_key; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_report"
    ADD CONSTRAINT "makeReports_report_rubric_id_key" UNIQUE (rubric_id);


--
-- Name: makeReports_reportsupplement makeReports_reportsupplement_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_reportsupplement"
    ADD CONSTRAINT "makeReports_reportsupplement_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_requiredfieldsetting makeReports_requiredfieldsetting_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_requiredfieldsetting"
    ADD CONSTRAINT "makeReports_requiredfieldsetting_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_resultcommunicate makeReports_resultcommunicate_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_resultcommunicate"
    ADD CONSTRAINT "makeReports_resultcommunicate_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_rubric makeReports_rubric_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_rubric"
    ADD CONSTRAINT "makeReports_rubric_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_rubricitem makeReports_rubricitem_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_rubricitem"
    ADD CONSTRAINT "makeReports_rubricitem_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_slo_gradGoals makeReports_slo_gradGoals_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slo_gradGoals"
    ADD CONSTRAINT "makeReports_slo_gradGoals_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_slo_gradGoals makeReports_slo_gradGoals_slo_id_gradgoal_id_00fca829_uniq; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slo_gradGoals"
    ADD CONSTRAINT "makeReports_slo_gradGoals_slo_id_gradgoal_id_00fca829_uniq" UNIQUE (slo_id, gradgoal_id);


--
-- Name: makeReports_slo makeReports_slo_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slo"
    ADD CONSTRAINT "makeReports_slo_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_sloinreport makeReports_sloinreport_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_sloinreport"
    ADD CONSTRAINT "makeReports_sloinreport_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_slostatus makeReports_slostatus_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slostatus"
    ADD CONSTRAINT "makeReports_slostatus_pkey" PRIMARY KEY (id);


--
-- Name: makeReports_slostatus makeReports_slostatus_sloIR_id_key; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slostatus"
    ADD CONSTRAINT "makeReports_slostatus_sloIR_id_key" UNIQUE ("sloIR_id");


--
-- Name: makeReports_slostostakeholder makeReports_slostostakeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slostostakeholder"
    ADD CONSTRAINT "makeReports_slostostakeholder_pkey" PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: makeReports_assessmentdata_assessmentVersion_id_f0247a59; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_assessmentdata_assessmentVersion_id_f0247a59" ON public."makeReports_assessmentdata" USING btree ("assessmentVersion_id");


--
-- Name: makeReports_assessmentvers_assessmentsupplement_id_9a30487e; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_assessmentvers_assessmentsupplement_id_9a30487e" ON public."makeReports_assessmentversion_supplements" USING btree (assessmentsupplement_id);


--
-- Name: makeReports_assessmentvers_assessmentversion_id_549998a2; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_assessmentvers_assessmentversion_id_549998a2" ON public."makeReports_assessmentversion_supplements" USING btree (assessmentversion_id);


--
-- Name: makeReports_assessmentversion_assessment_id_da1cec27; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_assessmentversion_assessment_id_da1cec27" ON public."makeReports_assessmentversion" USING btree (assessment_id);


--
-- Name: makeReports_assessmentversion_report_id_2781c22d; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_assessmentversion_report_id_2781c22d" ON public."makeReports_assessmentversion" USING btree (report_id);


--
-- Name: makeReports_assessmentversion_slo_id_70157d4a; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_assessmentversion_slo_id_70157d4a" ON public."makeReports_assessmentversion" USING btree (slo_id);


--
-- Name: makeReports_dataadditionalinformation_report_id_d9926511; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_dataadditionalinformation_report_id_d9926511" ON public."makeReports_dataadditionalinformation" USING btree (report_id);


--
-- Name: makeReports_degreeprogram_department_id_9d22e7bc; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_degreeprogram_department_id_9d22e7bc" ON public."makeReports_degreeprogram" USING btree (department_id);


--
-- Name: makeReports_department_college_id_c34c69b5; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_department_college_id_c34c69b5" ON public."makeReports_department" USING btree (college_id);


--
-- Name: makeReports_gradedrubric_rubricVersion_id_8138acbd; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_gradedrubric_rubricVersion_id_8138acbd" ON public."makeReports_gradedrubric" USING btree ("rubricVersion_id");


--
-- Name: makeReports_gradedrubricitem_item_id_8800f750; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_gradedrubricitem_item_id_8800f750" ON public."makeReports_gradedrubricitem" USING btree (item_id);


--
-- Name: makeReports_gradedrubricitem_rubric_id_9259d933; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_gradedrubricitem_rubric_id_9259d933" ON public."makeReports_gradedrubricitem" USING btree (rubric_id);


--
-- Name: makeReports_profile_department_id_50419a58; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_profile_department_id_50419a58" ON public."makeReports_profile" USING btree (department_id);


--
-- Name: makeReports_report_degreeProgram_id_9699ef2c; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_report_degreeProgram_id_9699ef2c" ON public."makeReports_report" USING btree ("degreeProgram_id");


--
-- Name: makeReports_reportsupplement_report_id_a170118a; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_reportsupplement_report_id_a170118a" ON public."makeReports_reportsupplement" USING btree (report_id);


--
-- Name: makeReports_resultcommunicate_report_id_7df2cee4; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_resultcommunicate_report_id_7df2cee4" ON public."makeReports_resultcommunicate" USING btree (report_id);


--
-- Name: makeReports_rubricitem_rubricVersion_id_6c8ebffc; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_rubricitem_rubricVersion_id_6c8ebffc" ON public."makeReports_rubricitem" USING btree ("rubricVersion_id");


--
-- Name: makeReports_slo_gradGoals_gradgoal_id_3fb61203; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_slo_gradGoals_gradgoal_id_3fb61203" ON public."makeReports_slo_gradGoals" USING btree (gradgoal_id);


--
-- Name: makeReports_slo_gradGoals_slo_id_294858df; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_slo_gradGoals_slo_id_294858df" ON public."makeReports_slo_gradGoals" USING btree (slo_id);


--
-- Name: makeReports_sloinreport_report_id_8e936775; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_sloinreport_report_id_8e936775" ON public."makeReports_sloinreport" USING btree (report_id);


--
-- Name: makeReports_sloinreport_slo_id_16991708; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_sloinreport_slo_id_16991708" ON public."makeReports_sloinreport" USING btree (slo_id);


--
-- Name: makeReports_slostostakeholder_report_id_20c5bb85; Type: INDEX; Schema: public; Owner: aaadb
--

CREATE INDEX "makeReports_slostostakeholder_report_id_20c5bb85" ON public."makeReports_slostostakeholder" USING btree (report_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_assessmentaggregate makeReports_assessme_assessmentVersion_id_1c134dc4_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentaggregate"
    ADD CONSTRAINT "makeReports_assessme_assessmentVersion_id_1c134dc4_fk_makeRepor" FOREIGN KEY ("assessmentVersion_id") REFERENCES public."makeReports_assessmentversion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_assessmentdata makeReports_assessme_assessmentVersion_id_f0247a59_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentdata"
    ADD CONSTRAINT "makeReports_assessme_assessmentVersion_id_f0247a59_fk_makeRepor" FOREIGN KEY ("assessmentVersion_id") REFERENCES public."makeReports_assessmentversion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_assessmentversion makeReports_assessme_assessment_id_da1cec27_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion"
    ADD CONSTRAINT "makeReports_assessme_assessment_id_da1cec27_fk_makeRepor" FOREIGN KEY (assessment_id) REFERENCES public."makeReports_assessment"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_assessmentversion_supplements makeReports_assessme_assessmentsupplement_9a30487e_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion_supplements"
    ADD CONSTRAINT "makeReports_assessme_assessmentsupplement_9a30487e_fk_makeRepor" FOREIGN KEY (assessmentsupplement_id) REFERENCES public."makeReports_assessmentsupplement"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_assessmentversion_supplements makeReports_assessme_assessmentversion_id_549998a2_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion_supplements"
    ADD CONSTRAINT "makeReports_assessme_assessmentversion_id_549998a2_fk_makeRepor" FOREIGN KEY (assessmentversion_id) REFERENCES public."makeReports_assessmentversion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_assessmentversion makeReports_assessme_report_id_2781c22d_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion"
    ADD CONSTRAINT "makeReports_assessme_report_id_2781c22d_fk_makeRepor" FOREIGN KEY (report_id) REFERENCES public."makeReports_report"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_assessmentversion makeReports_assessme_slo_id_70157d4a_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_assessmentversion"
    ADD CONSTRAINT "makeReports_assessme_slo_id_70157d4a_fk_makeRepor" FOREIGN KEY (slo_id) REFERENCES public."makeReports_sloinreport"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_dataadditionalinformation makeReports_dataaddi_report_id_d9926511_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_dataadditionalinformation"
    ADD CONSTRAINT "makeReports_dataaddi_report_id_d9926511_fk_makeRepor" FOREIGN KEY (report_id) REFERENCES public."makeReports_report"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_decisionsactions makeReports_decision_sloIR_id_753a91d7_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_decisionsactions"
    ADD CONSTRAINT "makeReports_decision_sloIR_id_753a91d7_fk_makeRepor" FOREIGN KEY ("sloIR_id") REFERENCES public."makeReports_sloinreport"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_degreeprogram makeReports_degreepr_department_id_9d22e7bc_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_degreeprogram"
    ADD CONSTRAINT "makeReports_degreepr_department_id_9d22e7bc_fk_makeRepor" FOREIGN KEY (department_id) REFERENCES public."makeReports_department"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_department makeReports_departme_college_id_c34c69b5_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_department"
    ADD CONSTRAINT "makeReports_departme_college_id_c34c69b5_fk_makeRepor" FOREIGN KEY (college_id) REFERENCES public."makeReports_college"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_gradedrubricitem makeReports_gradedru_item_id_8800f750_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradedrubricitem"
    ADD CONSTRAINT "makeReports_gradedru_item_id_8800f750_fk_makeRepor" FOREIGN KEY (item_id) REFERENCES public."makeReports_rubricitem"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_gradedrubric makeReports_gradedru_rubricVersion_id_8138acbd_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradedrubric"
    ADD CONSTRAINT "makeReports_gradedru_rubricVersion_id_8138acbd_fk_makeRepor" FOREIGN KEY ("rubricVersion_id") REFERENCES public."makeReports_rubric"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_gradedrubricitem makeReports_gradedru_rubric_id_9259d933_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_gradedrubricitem"
    ADD CONSTRAINT "makeReports_gradedru_rubric_id_9259d933_fk_makeRepor" FOREIGN KEY (rubric_id) REFERENCES public."makeReports_gradedrubric"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_profile makeReports_profile_department_id_50419a58_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_profile"
    ADD CONSTRAINT "makeReports_profile_department_id_50419a58_fk_makeRepor" FOREIGN KEY (department_id) REFERENCES public."makeReports_department"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_profile makeReports_profile_user_id_522878ba_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_profile"
    ADD CONSTRAINT "makeReports_profile_user_id_522878ba_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_report makeReports_report_degreeProgram_id_9699ef2c_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_report"
    ADD CONSTRAINT "makeReports_report_degreeProgram_id_9699ef2c_fk_makeRepor" FOREIGN KEY ("degreeProgram_id") REFERENCES public."makeReports_degreeprogram"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_report makeReports_report_rubric_id_f25148ee_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_report"
    ADD CONSTRAINT "makeReports_report_rubric_id_f25148ee_fk_makeRepor" FOREIGN KEY (rubric_id) REFERENCES public."makeReports_gradedrubric"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_reportsupplement makeReports_reportsu_report_id_a170118a_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_reportsupplement"
    ADD CONSTRAINT "makeReports_reportsu_report_id_a170118a_fk_makeRepor" FOREIGN KEY (report_id) REFERENCES public."makeReports_report"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_resultcommunicate makeReports_resultco_report_id_7df2cee4_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_resultcommunicate"
    ADD CONSTRAINT "makeReports_resultco_report_id_7df2cee4_fk_makeRepor" FOREIGN KEY (report_id) REFERENCES public."makeReports_report"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_rubricitem makeReports_rubricit_rubricVersion_id_6c8ebffc_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_rubricitem"
    ADD CONSTRAINT "makeReports_rubricit_rubricVersion_id_6c8ebffc_fk_makeRepor" FOREIGN KEY ("rubricVersion_id") REFERENCES public."makeReports_rubric"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_slo_gradGoals makeReports_slo_gradGoals_slo_id_294858df_fk_makeReports_slo_id; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slo_gradGoals"
    ADD CONSTRAINT "makeReports_slo_gradGoals_slo_id_294858df_fk_makeReports_slo_id" FOREIGN KEY (slo_id) REFERENCES public."makeReports_slo"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_slo_gradGoals makeReports_slo_grad_gradgoal_id_3fb61203_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slo_gradGoals"
    ADD CONSTRAINT "makeReports_slo_grad_gradgoal_id_3fb61203_fk_makeRepor" FOREIGN KEY (gradgoal_id) REFERENCES public."makeReports_gradgoal"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_sloinreport makeReports_sloinrep_report_id_8e936775_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_sloinreport"
    ADD CONSTRAINT "makeReports_sloinrep_report_id_8e936775_fk_makeRepor" FOREIGN KEY (report_id) REFERENCES public."makeReports_report"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_sloinreport makeReports_sloinreport_slo_id_16991708_fk_makeReports_slo_id; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_sloinreport"
    ADD CONSTRAINT "makeReports_sloinreport_slo_id_16991708_fk_makeReports_slo_id" FOREIGN KEY (slo_id) REFERENCES public."makeReports_slo"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_slostatus makeReports_slostatu_sloIR_id_6a781077_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slostatus"
    ADD CONSTRAINT "makeReports_slostatu_sloIR_id_6a781077_fk_makeRepor" FOREIGN KEY ("sloIR_id") REFERENCES public."makeReports_sloinreport"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: makeReports_slostostakeholder makeReports_slostost_report_id_20c5bb85_fk_makeRepor; Type: FK CONSTRAINT; Schema: public; Owner: aaadb
--

ALTER TABLE ONLY public."makeReports_slostostakeholder"
    ADD CONSTRAINT "makeReports_slostost_report_id_20c5bb85_fk_makeRepor" FOREIGN KEY (report_id) REFERENCES public."makeReports_report"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

