.class public final synthetic Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$ecVPbMVwvZeBGDgu_MaQGryHQ1o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$ecVPbMVwvZeBGDgu_MaQGryHQ1o;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iput p2, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$ecVPbMVwvZeBGDgu_MaQGryHQ1o;->f$1:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$ecVPbMVwvZeBGDgu_MaQGryHQ1o;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget v1, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$ecVPbMVwvZeBGDgu_MaQGryHQ1o;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$getTimeFormat$3$DateTimePolicy(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
