.class Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
.super Ljava/lang/Object;
.source "KnoxLegacyVpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KnoxLegacyVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/KnoxLegacyVpn;)V
    .registers 2

    .line 1719
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/KnoxLegacyVpn;Lcom/android/server/connectivity/KnoxLegacyVpn$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p2, "x1"    # Lcom/android/server/connectivity/KnoxLegacyVpn$1;

    .line 1719
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    .line 1719
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;->mService:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1724
    iput-object p2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;->mService:Landroid/os/IBinder;

    .line 1725
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;->mService:Landroid/os/IBinder;

    .line 1730
    return-void
.end method
