.class public final Landroid/os/epic/EpicManagerService;
.super Lcom/android/server/SystemService;
.source "EpicManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/epic/EpicManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EpicManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 50
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 44
    new-instance v0, Landroid/os/epic/EpicManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/epic/EpicManagerService$BinderService;-><init>(Landroid/os/epic/EpicManagerService;Landroid/os/epic/EpicManagerService$1;)V

    const-string v1, "epic"

    invoke-virtual {p0, v1, v0}, Landroid/os/epic/EpicManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 45
    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 54
    return-void
.end method
