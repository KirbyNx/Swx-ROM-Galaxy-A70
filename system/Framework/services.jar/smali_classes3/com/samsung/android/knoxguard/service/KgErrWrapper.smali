.class public Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.super Ljava/lang/Object;
.source "KgErrWrapper.java"


# static fields
.field private static final KGTA_FAILED:I = -0x4d2

.field private static final KGTA_PARAM_DEFAULT:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field public data:[B

.field public err:I

.field public result:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "KgErrWrapper"

    sput-object v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, -0x4d2

    iput v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "errNo"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 35
    return-void
.end method


# virtual methods
.method public getStr()Ljava/lang/String;
    .registers 4

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "ans":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    if-eqz v1, :cond_d

    .line 29
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 31
    :cond_d
    return-object v0
.end method

.method public setErr(I)V
    .registers 2
    .param p1, "errNo"    # I

    .line 37
    iput p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 38
    return-void
.end method
