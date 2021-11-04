.class public final synthetic Lcom/android/server/vr/-$$Lambda$GearVrManagerService$AsE8-19L9B-goodBIuuLYLIoqG4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$AsE8-19L9B-goodBIuuLYLIoqG4;->f$0:Lcom/android/server/vr/GearVrManagerService;

    return-void
.end method


# virtual methods
.method public final onUpmsStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$AsE8-19L9B-goodBIuuLYLIoqG4;->f$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->lambda$onBootPhase$1$GearVrManagerService(Z)V

    return-void
.end method
