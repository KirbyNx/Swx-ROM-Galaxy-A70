.class final Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;
.super Ljava/lang/Object;
.source "TaskSnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field final snapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field final timestamp:J

.field final topApp:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;
    .param p2, "topApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->snapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 178
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/TaskSnapshotCache$CacheEntry;->timestamp:J

    .line 182
    return-void
.end method
