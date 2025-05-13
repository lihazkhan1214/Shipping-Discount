import { SkeletonDisplayText } from "@shopify/polaris";
import "./style.css";

export default function Skeleton() {
  return (
    <div className="bannerSkeleton">
      <SkeletonDisplayText maxWidth="100%" />
    </div>
  );
}
