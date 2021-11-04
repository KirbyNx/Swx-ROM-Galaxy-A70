.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;->f$1:Landroid/content/ComponentName;

    iput-wide p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;->f$2:J

    iput p5, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;->f$1:Landroid/content/ComponentName;

    iget-wide v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;->f$2:J

    iget v4, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$qKtWJW25pVGkorvJVMjtT_gIxrk;->f$3:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumTimeToLock$49$PasswordPolicy(Landroid/content/ComponentName;JI)V

    return-void
.end method
