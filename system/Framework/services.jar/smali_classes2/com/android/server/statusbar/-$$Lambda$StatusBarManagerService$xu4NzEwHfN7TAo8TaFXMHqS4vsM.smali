.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IIZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$1:I

    iput p3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$1:I

    iget v2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xu4NzEwHfN7TAo8TaFXMHqS4vsM;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$topAppWindowChanged$1$StatusBarManagerService(IIZZ)V

    return-void
.end method
