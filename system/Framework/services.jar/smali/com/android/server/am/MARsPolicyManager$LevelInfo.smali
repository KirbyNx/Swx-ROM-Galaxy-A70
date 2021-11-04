.class Lcom/android/server/am/MARsPolicyManager$LevelInfo;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LevelInfo"
.end annotation


# instance fields
.field batteryUsage:D

.field packageName:Ljava/lang/String;

.field preBatteryUsage:D

.field prePackageCnt:I

.field reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field totalSize:I


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/MARsPolicyManager;

    .line 4036
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4037
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    .line 4038
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->batteryUsage:D

    .line 4039
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->packageName:Ljava/lang/String;

    .line 4040
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->prePackageCnt:I

    .line 4041
    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->preBatteryUsage:D

    .line 4042
    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->reason:Ljava/lang/String;

    .line 4043
    return-void
.end method
