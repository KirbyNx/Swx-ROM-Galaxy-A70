.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IILandroid/os/IBinder;IIZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$1:I

    iput p3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$2:I

    iput-object p4, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$3:Landroid/os/IBinder;

    iput p5, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$4:I

    iput p6, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$5:I

    iput-boolean p7, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$6:Z

    iput-boolean p8, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$1:I

    iget v2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$2:I

    iget-object v3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$3:Landroid/os/IBinder;

    iget v4, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$4:I

    iget v5, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$5:I

    iget-boolean v6, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$6:Z

    iget-boolean v7, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$PbNVFfzQSLFCafqMVbSHGGqosgo;->f$7:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$setImeWindowStatusToType$4$StatusBarManagerService(IILandroid/os/IBinder;IIZZ)V

    return-void
.end method
