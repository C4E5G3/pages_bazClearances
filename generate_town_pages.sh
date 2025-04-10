#!/usr/bin/env bash

# Define the towns (adjust as needed)
TOWNS=(
  "bournemouth" "poole" "christchurch" "weymouth" "dorchester"
  "ferndown" "wimborne-minster" "blandford-forum" "bridport" "verwood"
  "gillingham" "sherborne" "swanage" "wareham" "shaftesbury"
  "highcliffe" "west-moors" "broadstone" "upton" "parkstone"
  "puddletown" "wool" "beaminster" "sturminster-newton" "lyme-regis"
)

# Directory where Hugo stores content (adjust if different)
CONTENT_DIR="content/en"

# Create town pages
for town in "${TOWNS[@]}"; do
  # Format the town name for display (capitalized, hyphens replaced with spaces)
  display_name=$(echo "$town" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)}1')

  # Create the Markdown file
  cat << EOF > "$CONTENT_DIR/house-clearance-$town.md"
---
title: "House Clearance $display_name | Fast & Reliable Services"
description: "Professional house clearance in $display_name, Dorset. We clear homes, offices, and estates. Free quotes & same-day service available."
slug: "house-clearance-$town"
---

## **House Clearance Services in $display_name**

We provide **fast, affordable house clearance** in $display_name and nearby areas.

### **Our $display_name Services Include:**
✔ **Full house clearances** (homes, apartments, cottages)  
✔ **Office & commercial clearance**  
✔ **Estate clearance** (probate, downsizing)  
✔ **Waste removal & recycling**  

### **Why Choose Us in $display_name?**
✅ Same-day service available  
✅ Free quotes with no hidden fees  
✅ Licensed & eco-friendly waste disposal  

**Call us today for $display_name house clearance!**  
EOF

  echo "Created: $CONTENT_DIR/house-clearance-$town.md"
done

echo "✅ All 25 town pages generated!"
