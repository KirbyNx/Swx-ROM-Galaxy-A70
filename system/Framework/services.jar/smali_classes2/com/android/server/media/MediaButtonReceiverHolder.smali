.class final Lcom/android/server/media/MediaButtonReceiverHolder;
.super Ljava/lang/Object;
.source "MediaButtonReceiverHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaButtonReceiverHolder$ComponentType;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_USER_ID_DELIM:Ljava/lang/String; = ","

.field public static final COMPONENT_TYPE_ACTIVITY:I = 0x2

.field public static final COMPONENT_TYPE_BROADCAST:I = 0x1

.field public static final COMPONENT_TYPE_INVALID:I = 0x0

.field public static final COMPONENT_TYPE_SERVICE:I = 0x3

.field private static final DEBUG_KEY_EVENT:Z = true

.field private static final TAG:Ljava/lang/String; = "PendingIntentHolder"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mComponentType:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mUserId:I


# direct methods
.method private constructor <init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 149
    iput-object p2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 150
    iput-object p3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 151
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    .line 152
    iput p4, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 153
    return-void
.end method

.method private constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 157
    iput-object p2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 159
    iput-object p3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 161
    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/app/PendingIntent;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 111
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 112
    return-object v0

    .line 114
    :cond_4
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 115
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, v0

    .line 116
    .local v1, "componentName":Landroid/content/ComponentName;
    :goto_16
    if-eqz v1, :cond_22

    .line 118
    new-instance v0, Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 119
    invoke-static {p0, v1}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    .line 118
    return-object v0

    .line 123
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 124
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 125
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/server/media/MediaButtonReceiverHolder;->resolveImplicitServiceIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    move-object v1, v4

    if-eqz v4, :cond_38

    .line 126
    new-instance v0, Lcom/android/server/media/MediaButtonReceiverHolder;

    const/4 v4, 0x3

    invoke-direct {v0, p1, p2, v1, v4}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object v0

    .line 128
    :cond_38
    invoke-static {v2, v3}, Lcom/android/server/media/MediaButtonReceiverHolder;->resolveManifestDeclaredBroadcastReceiverIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    move-object v1, v4

    if-eqz v4, :cond_46

    .line 130
    new-instance v0, Lcom/android/server/media/MediaButtonReceiverHolder;

    const/4 v4, 0x1

    invoke-direct {v0, p1, p2, v1, v4}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object v0

    .line 132
    :cond_46
    invoke-static {v2, v3}, Lcom/android/server/media/MediaButtonReceiverHolder;->resolveImplicitActivityIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    move-object v1, v4

    if-eqz v4, :cond_54

    .line 133
    new-instance v0, Lcom/android/server/media/MediaButtonReceiverHolder;

    const/4 v4, 0x2

    invoke-direct {v0, p1, p2, v1, v4}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object v0

    .line 139
    :cond_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unresolvable implicit intent is set, pi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PendingIntentHolder"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz p2, :cond_7b

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_7b

    .line 141
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_7c

    :cond_7b
    nop

    .line 142
    .local v0, "packageName":Ljava/lang/String;
    :goto_7c
    new-instance v4, Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 143
    if-eqz v0, :cond_82

    move-object v5, v0

    goto :goto_84

    :cond_82
    const-string v5, ""

    :goto_84
    invoke-direct {v4, p1, p2, v5}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 142
    return-object v4
.end method

.method private static createComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 6
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 349
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 350
    return-object v0

    .line 354
    :cond_4
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_b

    .line 355
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v1, "componentInfo":Landroid/content/pm/ComponentInfo;
    goto :goto_11

    .line 356
    .end local v1    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :cond_b
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1d

    .line 357
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 364
    .restart local v1    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :goto_11
    :try_start_11
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_1a} :catch_1b

    return-object v2

    .line 365
    :catch_1b
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 360
    .end local v1    # "componentInfo":Landroid/content/pm/ComponentInfo;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_1d
    return-object v0
.end method

.method private static getComponentType(Landroid/content/Context;Landroid/content/ComponentName;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 284
    if-nez p1, :cond_4

    .line 285
    const/4 v0, 0x0

    return v0

    .line 287
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 289
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const v1, 0xc0001

    :try_start_b
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_14

    .line 293
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_13

    .line 294
    const/4 v2, 0x2

    return v2

    .line 297
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_13
    goto :goto_15

    .line 296
    :catch_14
    move-exception v1

    .line 299
    :goto_15
    const v1, 0xc0004

    :try_start_18
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1c} :catch_21

    .line 303
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_20

    .line 304
    const/4 v2, 0x3

    return v2

    .line 307
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_20
    goto :goto_22

    .line 306
    :catch_21
    move-exception v1

    .line 309
    :goto_22
    const/4 v1, 0x1

    return v1
.end method

.method private static resolveImplicitActivityIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 341
    const v0, 0xd0001

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaButtonReceiverHolder;->createComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static resolveImplicitServiceIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 317
    const v0, 0xc0004

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaButtonReceiverHolder;->createComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static resolveManifestDeclaredBroadcastReceiverIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 328
    const/high16 v0, 0xc0000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 330
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 331
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-static {v1}, Lcom/android/server/media/MediaButtonReceiverHolder;->createComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 330
    :goto_1b
    return-object v1
.end method

.method public static unflattenFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaButtonReceiverInfo"    # Ljava/lang/String;

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 83
    return-object v1

    .line 85
    :cond_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "tokens":[Ljava/lang/String;
    if-eqz v0, :cond_3f

    array-length v2, v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    array-length v2, v0

    if-eq v2, v3, :cond_19

    goto :goto_3f

    .line 89
    :cond_19
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 90
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_23

    .line 91
    return-object v1

    .line 93
    :cond_23
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 95
    .local v5, "userId":I
    array-length v6, v0

    if-ne v6, v3, :cond_34

    .line 96
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_38

    .line 97
    :cond_34
    invoke-static {p0, v2}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v3

    :goto_38
    nop

    .line 98
    .local v3, "componentType":I
    new-instance v4, Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object v4

    .line 87
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "componentType":I
    .end local v5    # "userId":I
    :cond_3f
    :goto_3f
    return-object v1
.end method


# virtual methods
.method public flattenToString()Ljava/lang/String;
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_7

    .line 261
    const-string v0, ""

    return-object v0

    .line 264
    :cond_7
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 265
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 266
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 267
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 264
    const-string v0, ","

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    return v0
.end method

.method public send(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)Z
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
    .param p3, "callingPackageName"    # Ljava/lang/String;
    .param p4, "resultCode"    # I
    .param p5, "onFinishedListener"    # Landroid/app/PendingIntent$OnFinished;
    .param p6, "handler"    # Landroid/os/Handler;

    .line 195
    move-object v1, p0

    move-object v8, p1

    move-object/from16 v9, p2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 196
    .local v10, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v11, p3

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v0, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "Sending "

    const/4 v12, 0x0

    const-string v13, "PendingIntentHolder"

    if-eqz v0, :cond_68

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the last known PendingIntent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_42
    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    move-object v3, p1

    move/from16 v4, p4

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_4f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_42 .. :try_end_4f} :catch_50

    .line 212
    goto :goto_b3

    .line 209
    :catch_50
    move-exception v0

    .line 210
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending key event to media button receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    return v12

    .line 213
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_68
    iget-object v0, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_d5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the restored intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    iget v0, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 221
    .local v3, "userHandle":Landroid/os/UserHandle;
    :try_start_9d
    iget v0, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_ad

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a9

    .line 231
    invoke-virtual {p1, v10, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_b1

    .line 226
    :cond_a9
    invoke-virtual {p1, v10, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 228
    goto :goto_b1

    .line 223
    :cond_ad
    invoke-virtual {p1, v10, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b0} :catch_b5

    .line 224
    nop

    .line 237
    :goto_b1
    nop

    .line 238
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    nop

    .line 243
    :goto_b3
    const/4 v0, 0x1

    return v0

    .line 233
    .restart local v3    # "userHandle":Landroid/os/UserHandle;
    :catch_b5
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending media button to the restored intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    return v12

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_d5
    const-string v0, "Shouldn\'t be happen -- pending intent or component name must be set"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v12
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    const-string/jumbo v1, "}"

    const-string v2, ", type="

    if-eqz v0, :cond_28

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MBR {pi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restored MBR {component="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
