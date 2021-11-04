.class public final synthetic Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$ocEDmM6SnCLhS3OmwLhTr_MsgdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$ocEDmM6SnCLhS3OmwLhTr_MsgdY;->f$0:I

    iput p2, p0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$ocEDmM6SnCLhS3OmwLhTr_MsgdY;->f$1:I

    iput p3, p0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$ocEDmM6SnCLhS3OmwLhTr_MsgdY;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$ocEDmM6SnCLhS3OmwLhTr_MsgdY;->f$0:I

    iget v1, p0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$ocEDmM6SnCLhS3OmwLhTr_MsgdY;->f$1:I

    iget v2, p0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$ocEDmM6SnCLhS3OmwLhTr_MsgdY;->f$2:I

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->lambda$notifyStateChangeFinish$1(IIILandroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method
