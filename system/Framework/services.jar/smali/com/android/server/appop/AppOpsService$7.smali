.class Lcom/android/server/appop/AppOpsService$7;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 1759
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1762
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1763
    return v1

    .line 1765
    :cond_8
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    const/16 v3, 0x3b

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const-string v8, "External storage policy"

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1768
    return v1

    .line 1770
    :cond_1a
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    const/16 v3, 0x3c

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const-string v8, "External storage policy"

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1773
    const/4 v0, 0x2

    return v0

    .line 1775
    :cond_2d
    const/4 v0, 0x3

    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1780
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService$7;->getMountMode(ILjava/lang/String;)I

    move-result v0

    .line 1781
    .local v0, "mountMode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method
