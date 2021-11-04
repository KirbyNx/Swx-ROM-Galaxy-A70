.class public Lcom/samsung/android/mcf/delegation/McfBleDelegation;
.super Ljava/lang/Object;
.source "McfBleDelegation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "McfBleDelegation"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/delegation/BleScanRequest;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    sget-object v2, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    const-string v3, "getAllByPkg"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 155
    const-string v0, "return"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "getAll"

    const-string v3, "McfBleDelegation"

    if-nez v0, :cond_33

    .line 156
    const-string p0, "Failed"

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_33
    nop

    .line 160
    const-string v0, "reqList"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_42

    .line 162
    const-string p0, "empty"

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 166
    :cond_42
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-static {v0}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_65
    return-object v1
.end method

.method public static getRegisteredFilterCount(Landroid/content/Context;)I
    .registers 3

    .line 174
    invoke-static {p0}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 175
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 180
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/delegation/BleScanRequest;

    .line 181
    invoke-virtual {v0}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getMaxFilterCount()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_10

    :cond_22
    return v1
.end method

.method public static isSupported()Z
    .registers 1

    .line 57
    invoke-static {}, Lcom/samsung/android/mcf/common/Feature;->isMcfFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 60
    :cond_8
    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->isSupportFeature(Lcom/samsung/android/mcf/common/McfSdkFeature;)Z

    move-result v0

    return v0
.end method

.method public static register(Landroid/content/Context;Lcom/samsung/android/mcf/delegation/BleScanRequest;)Z
    .registers 6

    .line 75
    invoke-static {}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 79
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->isValidRegisterScanInfo()Z

    move-result v0

    if-nez v0, :cond_18

    .line 80
    const-string p0, "McfBleDelegation"

    const-string p1, "register"

    const-string v0, "isValidRegisterScanInfo"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 84
    :cond_18
    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getMaxFilterCount()I

    move-result v0

    .line 85
    invoke-static {p0}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->getRegisteredFilterCount(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x5

    if-gt v0, v2, :cond_3c

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 92
    sget-object v0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "registerScanRequest"

    invoke-virtual {p0, v0, v3, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 93
    const-string p1, "return"

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 88
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The number of filters should be 5 or less : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregister(Landroid/content/Context;I)Z
    .registers 6

    .line 117
    invoke-static {}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 121
    :cond_8
    new-instance v0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;-><init>(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->build()Lcom/samsung/android/mcf/delegation/BleScanRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 124
    sget-object v0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "unregisterScanRequest"

    invoke-virtual {p0, v0, v3, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 125
    const-string p1, "return"

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static unregister(Landroid/content/Context;Lcom/samsung/android/mcf/delegation/BleScanRequest;)Z
    .registers 2

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getRequestId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->unregister(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static unregisterAll(Landroid/content/Context;)V
    .registers 5

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 138
    sget-object v1, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    const-string v2, "unregisterAllByPkg"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
