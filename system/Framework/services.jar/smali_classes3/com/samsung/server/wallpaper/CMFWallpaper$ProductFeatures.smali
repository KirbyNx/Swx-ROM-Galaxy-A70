.class public Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;
.super Ljava/lang/Object;
.source "CMFWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/CMFWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProductFeatures"
.end annotation


# static fields
.field public static final COLOR_CODE_BURGUNDY_RED:Ljava/lang/String; = "zr"

.field public static final COLOR_CODE_PINK:Ljava/lang/String; = "zi"

.field public static final COLOR_CODE_SILVER:Ljava/lang/String; = "zs"

.field public static final COLOR_CODE_WHITE:Ljava/lang/String; = "zw"

.field public static final PRODUCT_BEYOND:Ljava/lang/String; = "beyond"

.field public static final PRODUCT_BEYONDX:Ljava/lang/String; = "beyondx"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "originalColor"    # Ljava/lang/String;

    .line 267
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2a

    .line 269
    :cond_9
    # invokes: Lcom/samsung/server/wallpaper/CMFWallpaper;->switchCmfByCscFeature(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 271
    invoke-static {}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->isBeyond()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 272
    const-string v0, "zs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 273
    const-string v0, "zw"

    return-object v0

    .line 274
    :cond_1e
    const-string v0, "zr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 275
    const-string v0, "zi"

    return-object v0

    .line 278
    :cond_29
    return-object p0

    .line 267
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getProductInfo()Ljava/lang/String;
    .registers 4

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ro.build.flavor"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v3, "ro.build.product"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "ro.product.model"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isBeyond()Z
    .registers 2

    .line 262
    invoke-static {}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beyond"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->isBeyondX()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 263
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public static isBeyondX()Z
    .registers 2

    .line 257
    invoke-static {}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beyondx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    .line 258
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
