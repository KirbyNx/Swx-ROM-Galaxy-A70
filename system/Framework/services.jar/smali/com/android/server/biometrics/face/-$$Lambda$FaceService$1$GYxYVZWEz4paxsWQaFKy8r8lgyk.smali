.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GYxYVZWEz4paxsWQaFKy8r8lgyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GYxYVZWEz4paxsWQaFKy8r8lgyk;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GYxYVZWEz4paxsWQaFKy8r8lgyk;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GYxYVZWEz4paxsWQaFKy8r8lgyk;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GYxYVZWEz4paxsWQaFKy8r8lgyk;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onLockoutChanged$8$FaceService$1(J)V

    return-void
.end method
