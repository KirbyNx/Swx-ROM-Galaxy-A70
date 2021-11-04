.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;IIIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$2:I

    iput p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$3:I

    iput p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$4:I

    iput p6, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$5:I

    iput p7, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$6:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$2:I

    iget v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$3:I

    iget v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$4:I

    iget v5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$5:I

    iget v6, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$XytQqxO1gwbdjrCrXz2GOTzmtF8;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$addWidget$129$KnoxCustomManagerService(Ljava/lang/String;IIIII)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
