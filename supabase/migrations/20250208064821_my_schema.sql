create table "public"."customers" (
    "id" uuid not null default uuid_generate_v4(),
    "name" character varying(255) not null,
    "email" character varying(255) not null,
    "image_url" character varying(255) not null
);


create table "public"."invoices" (
    "id" uuid not null default uuid_generate_v4(),
    "customer_id" uuid not null,
    "amount" integer not null,
    "status" character varying(255) not null,
    "date" date not null
);


create table "public"."revenue" (
    "month" character varying(4) not null,
    "revenue" integer not null
);


create table "public"."users" (
    "id" uuid not null default uuid_generate_v4(),
    "name" character varying(255) not null,
    "email" text not null,
    "password" text not null
);


CREATE UNIQUE INDEX customers_pkey ON public.customers USING btree (id);

CREATE UNIQUE INDEX invoices_pkey ON public.invoices USING btree (id);

CREATE UNIQUE INDEX revenue_month_key ON public.revenue USING btree (month);

CREATE UNIQUE INDEX users_email_key ON public.users USING btree (email);

CREATE UNIQUE INDEX users_pkey ON public.users USING btree (id);

alter table "public"."customers" add constraint "customers_pkey" PRIMARY KEY using index "customers_pkey";

alter table "public"."invoices" add constraint "invoices_pkey" PRIMARY KEY using index "invoices_pkey";

alter table "public"."users" add constraint "users_pkey" PRIMARY KEY using index "users_pkey";

alter table "public"."revenue" add constraint "revenue_month_key" UNIQUE using index "revenue_month_key";

alter table "public"."users" add constraint "users_email_key" UNIQUE using index "users_email_key";

grant delete on table "public"."customers" to "anon";

grant insert on table "public"."customers" to "anon";

grant references on table "public"."customers" to "anon";

grant select on table "public"."customers" to "anon";

grant trigger on table "public"."customers" to "anon";

grant truncate on table "public"."customers" to "anon";

grant update on table "public"."customers" to "anon";

grant delete on table "public"."customers" to "authenticated";

grant insert on table "public"."customers" to "authenticated";

grant references on table "public"."customers" to "authenticated";

grant select on table "public"."customers" to "authenticated";

grant trigger on table "public"."customers" to "authenticated";

grant truncate on table "public"."customers" to "authenticated";

grant update on table "public"."customers" to "authenticated";

grant delete on table "public"."customers" to "service_role";

grant insert on table "public"."customers" to "service_role";

grant references on table "public"."customers" to "service_role";

grant select on table "public"."customers" to "service_role";

grant trigger on table "public"."customers" to "service_role";

grant truncate on table "public"."customers" to "service_role";

grant update on table "public"."customers" to "service_role";

grant delete on table "public"."invoices" to "anon";

grant insert on table "public"."invoices" to "anon";

grant references on table "public"."invoices" to "anon";

grant select on table "public"."invoices" to "anon";

grant trigger on table "public"."invoices" to "anon";

grant truncate on table "public"."invoices" to "anon";

grant update on table "public"."invoices" to "anon";

grant delete on table "public"."invoices" to "authenticated";

grant insert on table "public"."invoices" to "authenticated";

grant references on table "public"."invoices" to "authenticated";

grant select on table "public"."invoices" to "authenticated";

grant trigger on table "public"."invoices" to "authenticated";

grant truncate on table "public"."invoices" to "authenticated";

grant update on table "public"."invoices" to "authenticated";

grant delete on table "public"."invoices" to "service_role";

grant insert on table "public"."invoices" to "service_role";

grant references on table "public"."invoices" to "service_role";

grant select on table "public"."invoices" to "service_role";

grant trigger on table "public"."invoices" to "service_role";

grant truncate on table "public"."invoices" to "service_role";

grant update on table "public"."invoices" to "service_role";

grant delete on table "public"."revenue" to "anon";

grant insert on table "public"."revenue" to "anon";

grant references on table "public"."revenue" to "anon";

grant select on table "public"."revenue" to "anon";

grant trigger on table "public"."revenue" to "anon";

grant truncate on table "public"."revenue" to "anon";

grant update on table "public"."revenue" to "anon";

grant delete on table "public"."revenue" to "authenticated";

grant insert on table "public"."revenue" to "authenticated";

grant references on table "public"."revenue" to "authenticated";

grant select on table "public"."revenue" to "authenticated";

grant trigger on table "public"."revenue" to "authenticated";

grant truncate on table "public"."revenue" to "authenticated";

grant update on table "public"."revenue" to "authenticated";

grant delete on table "public"."revenue" to "service_role";

grant insert on table "public"."revenue" to "service_role";

grant references on table "public"."revenue" to "service_role";

grant select on table "public"."revenue" to "service_role";

grant trigger on table "public"."revenue" to "service_role";

grant truncate on table "public"."revenue" to "service_role";

grant update on table "public"."revenue" to "service_role";

grant delete on table "public"."users" to "anon";

grant insert on table "public"."users" to "anon";

grant references on table "public"."users" to "anon";

grant select on table "public"."users" to "anon";

grant trigger on table "public"."users" to "anon";

grant truncate on table "public"."users" to "anon";

grant update on table "public"."users" to "anon";

grant delete on table "public"."users" to "authenticated";

grant insert on table "public"."users" to "authenticated";

grant references on table "public"."users" to "authenticated";

grant select on table "public"."users" to "authenticated";

grant trigger on table "public"."users" to "authenticated";

grant truncate on table "public"."users" to "authenticated";

grant update on table "public"."users" to "authenticated";

grant delete on table "public"."users" to "service_role";

grant insert on table "public"."users" to "service_role";

grant references on table "public"."users" to "service_role";

grant select on table "public"."users" to "service_role";

grant trigger on table "public"."users" to "service_role";

grant truncate on table "public"."users" to "service_role";

grant update on table "public"."users" to "service_role";


