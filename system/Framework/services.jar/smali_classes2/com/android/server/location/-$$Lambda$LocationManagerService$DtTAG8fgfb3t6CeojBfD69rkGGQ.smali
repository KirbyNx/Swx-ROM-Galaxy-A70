.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$DtTAG8fgfb3t6CeojBfD69rkGGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;

.field public final synthetic f$1:Landroid/os/PowerSaveState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/os/PowerSaveState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$DtTAG8fgfb3t6CeojBfD69rkGGQ;->f$0:Lcom/android/server/location/LocationManagerService;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$DtTAG8fgfb3t6CeojBfD69rkGGQ;->f$1:Landroid/os/PowerSaveState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$DtTAG8fgfb3t6CeojBfD69rkGGQ;->f$0:Lcom/android/server/location/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$DtTAG8fgfb3t6CeojBfD69rkGGQ;->f$1:Landroid/os/PowerSaveState;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService;->lambda$onSystemReady$5$LocationManagerService(Landroid/os/PowerSaveState;)V

    return-void
.end method
