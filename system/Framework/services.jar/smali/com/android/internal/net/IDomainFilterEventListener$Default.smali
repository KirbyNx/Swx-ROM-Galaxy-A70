.class public Lcom/android/internal/net/IDomainFilterEventListener$Default;
.super Ljava/lang/Object;
.source "IDomainFilterEventListener.java"

# interfaces
.implements Lcom/android/internal/net/IDomainFilterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IDomainFilterEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDomainFilterReportEvent(IIJLjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "timestamp"    # J
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
