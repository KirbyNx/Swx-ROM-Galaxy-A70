.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IIIILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$1:I

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$2:I

    iput p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$3:I

    iput p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$4:I

    iput-object p6, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$1:I

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$2:I

    iget v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$3:I

    iget v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$4:I

    iget-object v5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$u_R0ibFy_CESN6yW7cK0VoghrcI;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setStatusBarTextScrollWidth$86$KnoxCustomManagerService(IIIILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
