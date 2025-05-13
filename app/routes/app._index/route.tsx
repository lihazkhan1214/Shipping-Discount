import { useEffect } from "react";
import type { ActionFunctionArgs, LoaderFunctionArgs } from "@remix-run/node";
import { Page } from "@shopify/polaris";
import DashboardBanner from "app/components/Dashboardbanner";

export default function Index() {
  return (
    <Page>
      <DashboardBanner />
    </Page>
  );
}
