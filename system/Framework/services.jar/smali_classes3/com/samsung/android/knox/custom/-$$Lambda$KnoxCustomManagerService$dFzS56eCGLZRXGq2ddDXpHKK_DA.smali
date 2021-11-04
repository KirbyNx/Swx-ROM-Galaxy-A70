.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Landroid/net/IEthernetManager;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IEthernetManager;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$6:Landroid/net/IEthernetManager;

    iput p8, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$7:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$6:Landroid/net/IEthernetManager;

    iget v7, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$dFzS56eCGLZRXGq2ddDXpHKK_DA;->f$7:I

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setEthernetConfiguration$37$KnoxCustomManagerService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IEthernetManager;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
