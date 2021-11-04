.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$CP3aSlyfzVP-FxQspwcGKGuPaqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$CP3aSlyfzVP-FxQspwcGKGuPaqU;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$CP3aSlyfzVP-FxQspwcGKGuPaqU;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$CP3aSlyfzVP-FxQspwcGKGuPaqU;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$CP3aSlyfzVP-FxQspwcGKGuPaqU;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$CP3aSlyfzVP-FxQspwcGKGuPaqU;->f$1:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$CP3aSlyfzVP-FxQspwcGKGuPaqU;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordMinimumNumeric$29$PasswordPolicy(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
