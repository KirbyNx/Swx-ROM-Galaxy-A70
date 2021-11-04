.class final Lcom/android/server/gpu/GpuService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gpu/GpuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method private constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/gpu/GpuService;Lcom/android/server/gpu/GpuService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/gpu/GpuService;
    .param p2, "x1"    # Lcom/android/server/gpu/GpuService$1;

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 173
    .local v0, "data":Landroid/net/Uri;
    nop

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    # getter for: Lcom/android/server/gpu/GpuService;->mProdDriverPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/gpu/GpuService;->access$700(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 179
    .local v2, "isProdDriver":Z
    iget-object v3, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    # getter for: Lcom/android/server/gpu/GpuService;->mDevDriverPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/gpu/GpuService;->access$800(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 180
    .local v3, "isDevDriver":Z
    if-nez v2, :cond_22

    if-nez v3, :cond_22

    .line 181
    return-void

    .line 184
    :cond_22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0xa480416

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_51

    const v7, 0x1f50b9c2

    if-eq v6, v7, :cond_47

    const v7, 0x5c1076e2

    if-eq v6, v7, :cond_3d

    :cond_3c
    goto :goto_5a

    :cond_3d
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v5, 0x0

    goto :goto_5a

    :cond_47
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    move v5, v8

    goto :goto_5a

    :cond_51
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    move v5, v9

    :goto_5a
    if-eqz v5, :cond_61

    if-eq v5, v9, :cond_61

    if-eq v5, v8, :cond_61

    goto :goto_75

    .line 188
    :cond_61
    if-eqz v2, :cond_6e

    .line 189
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    # invokes: Lcom/android/server/gpu/GpuService;->fetchGameDriverPackageProperties()V
    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->access$900(Lcom/android/server/gpu/GpuService;)V

    .line 190
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    # invokes: Lcom/android/server/gpu/GpuService;->setBlacklist()V
    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->access$300(Lcom/android/server/gpu/GpuService;)V

    goto :goto_75

    .line 191
    :cond_6e
    if-eqz v3, :cond_75

    .line 192
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    # invokes: Lcom/android/server/gpu/GpuService;->fetchDeveloperDriverPackageProperties()V
    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->access$1000(Lcom/android/server/gpu/GpuService;)V

    .line 199
    :cond_75
    :goto_75
    return-void
.end method
