.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;JLjava/util/ArrayList;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;->f$1:J

    iput-object p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;->f$2:Ljava/util/ArrayList;

    iput p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;->f$1:J

    iget-object v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;->f$2:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;->f$3:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onEnumerate$7$FaceService$1(JLjava/util/ArrayList;I)V

    return-void
.end method
