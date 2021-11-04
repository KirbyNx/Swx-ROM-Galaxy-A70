.class public Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
.super Ljava/lang/Object;
.source "InputMethodSubtypeHandle.java"


# instance fields
.field private final mInputMethodId:Ljava/lang/String;

.field private mLanguageTag:Ljava/lang/String;

.field private final mSubtypeId:I


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "info"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mLanguageTag:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    .line 33
    if-eqz p2, :cond_1b

    .line 34
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 35
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mLanguageTag:Ljava/lang/String;

    goto :goto_1e

    .line 37
    :cond_1b
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 39
    :goto_1e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "inputMethodId"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mLanguageTag:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    instance-of v1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    if-nez v1, :cond_8

    goto :goto_23

    .line 59
    :cond_8
    move-object v1, p1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    .line 60
    .local v1, "other":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 61
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->getSubtypeId()I

    move-result v3

    if-ne v2, v3, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 60
    :goto_22
    return v0

    .line 57
    .end local v1    # "other":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    :cond_23
    :goto_23
    return v0
.end method

.method public getInputMethodId()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeId()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodSubtypeHandle{mInputMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLanguageTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubtypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
