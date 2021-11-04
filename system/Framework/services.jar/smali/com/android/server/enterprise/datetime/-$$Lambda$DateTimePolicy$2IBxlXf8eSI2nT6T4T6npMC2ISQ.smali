.class public final synthetic Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$2IBxlXf8eSI2nT6T4T6npMC2ISQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$2IBxlXf8eSI2nT6T4T6npMC2ISQ;->f$0:J

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-wide v0, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$2IBxlXf8eSI2nT6T4T6npMC2ISQ;->f$0:J

    invoke-static {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$setDateTime$0(J)V

    return-void
.end method
