.class public final synthetic Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$13uWclDxhQrM-39sFJv3Kb4mHJE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$13uWclDxhQrM-39sFJv3Kb4mHJE;->f$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$13uWclDxhQrM-39sFJv3Kb4mHJE;->f$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->lambda$showOkButton$1$ImmersiveModeConfirmation()V

    return-void
.end method
