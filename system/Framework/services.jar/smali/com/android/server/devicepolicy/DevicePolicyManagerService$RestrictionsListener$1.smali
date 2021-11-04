.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;

    .line 1143
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1146
    const-string v0, "DevicePolicyManager"

    const-string v1, "disallow_share_into_managed_profile chagned : send intent to com.samsung.android.knox.containercore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener$1;->val$intent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->access$2400(Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener$1;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1149
    return-void
.end method
