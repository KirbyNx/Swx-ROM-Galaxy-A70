.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;
.super Landroid/app/IProcessObserver$Stub;
.source "KnoxVpnProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 40
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 43
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStart(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->access$000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V

    .line 44
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 50
    return-void
.end method

.method public onProcessDied(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 54
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStop(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V

    .line 55
    return-void
.end method
