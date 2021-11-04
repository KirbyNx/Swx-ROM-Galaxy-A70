.class public final synthetic Lcom/android/server/enterprise/utils/-$$Lambda$SecContentProviderUtil$7D2ty_l7Ussl-6KemUIonvPupa4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/utils/-$$Lambda$SecContentProviderUtil$7D2ty_l7Ussl-6KemUIonvPupa4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/utils/-$$Lambda$SecContentProviderUtil$7D2ty_l7Ussl-6KemUIonvPupa4;->f$1:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/enterprise/utils/-$$Lambda$SecContentProviderUtil$7D2ty_l7Ussl-6KemUIonvPupa4;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/utils/-$$Lambda$SecContentProviderUtil$7D2ty_l7Ussl-6KemUIonvPupa4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/-$$Lambda$SecContentProviderUtil$7D2ty_l7Ussl-6KemUIonvPupa4;->f$1:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/enterprise/utils/-$$Lambda$SecContentProviderUtil$7D2ty_l7Ussl-6KemUIonvPupa4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->lambda$notifyPolicyChangesAsUser$0(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method
