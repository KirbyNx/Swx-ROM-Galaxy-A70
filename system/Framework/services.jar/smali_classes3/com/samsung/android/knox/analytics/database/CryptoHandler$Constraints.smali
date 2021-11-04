.class Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/CryptoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraints"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints$CBC;,
        Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints$GCM;
    }
.end annotation


# static fields
.field static final CHARSET_ENCODING:Ljava/lang/String; = "UTF-8"

.field static final KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field static final KEY_GENERATOR_ALGORITHM:Ljava/lang/String; = "AES"

.field static final LEGACY_TYPE:I = 0x1

.field static final SYNTHETIC_CBC_TYPE:I = 0x3

.field static final SYNTHETIC_GCM_TYPE:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
