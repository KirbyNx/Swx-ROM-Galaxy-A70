.class Lcom/android/server/pm/PackageManagerService$6;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 26344
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11
    .param p1, "selfChange"    # Z

    .line 26347
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->val$resolver:Landroid/content/ContentResolver;

    .line 26348
    const-string v1, "enable_ephemeral_feature"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 26349
    .local v0, "ephemeralFeatureDisabled":Z
    :goto_f
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_19
    if-ge v5, v4, :cond_3a

    aget v6, v3, v5

    .line 26350
    .local v6, "userId":I
    if-nez v0, :cond_2d

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$6;->val$resolver:Landroid/content/ContentResolver;

    .line 26351
    const-string/jumbo v8, "instant_apps_enabled"

    invoke-static {v7, v8, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_2b

    goto :goto_2d

    :cond_2b
    move v7, v1

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v7, v2

    .line 26353
    .local v7, "instantAppsDisabledForUser":Z
    :goto_2e
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Landroid/util/SparseBooleanArray;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 26349
    .end local v6    # "userId":I
    .end local v7    # "instantAppsDisabledForUser":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 26355
    :cond_3a
    return-void
.end method
