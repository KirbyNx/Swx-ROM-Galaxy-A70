.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:[Lcom/android/internal/widget/VerifyCredentialResponse;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>([I[Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;->f$0:[I

    iput-object p2, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;->f$1:[Lcom/android/internal/widget/VerifyCredentialResponse;

    iput p3, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;->f$0:[I

    iget-object v1, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;->f$1:[Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v2, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$weaverVerify$1([I[Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V

    return-void
.end method
