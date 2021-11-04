.class Lcom/android/server/display/WifiDisplayAdapter$14;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->enableScreenInTile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .line 920
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 924
    const-string v0, "WifiDisplayAdapter"

    :try_start_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartmirroring"

    const-string v3, "com.samsung.android.smartmirroring.tile.ScreenSharingTile"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    .local v1, "cn":Landroid/content/ComponentName;
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 926
    .local v2, "iPM":Landroid/content/pm/IPackageManager;
    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->val$userId:I

    const/4 v4, 0x1

    invoke-interface {v2, v1, v4, v4, v3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 927
    const-string/jumbo v3, "support screen sharing ready, use ScreenInTile"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    .line 931
    nop

    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "iPM":Landroid/content/pm/IPackageManager;
    goto :goto_2d

    .line 928
    :catch_24
    move-exception v1

    .line 929
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Component not found"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 932
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method
