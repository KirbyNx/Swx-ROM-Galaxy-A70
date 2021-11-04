.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 65
    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    .line 67
    return-void
.end method

.method private loadShortcuts()V
    .registers 22

    .line 122
    move-object/from16 v1, p0

    const-string v2, "Got exception parsing bookmarks."

    const-string v3, "ShortcutManager"

    iget-object v0, v1, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 124
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_c
    iget-object v0, v1, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1170007

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v5, v0

    .line 126
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    const-string v0, "bookmarks"

    invoke-static {v5, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 129
    :goto_1f
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 131
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2b

    .line 132
    goto/16 :goto_155

    .line 135
    :cond_2b
    const-string v0, "bookmark"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 136
    goto/16 :goto_155

    .line 139
    :cond_39
    const-string/jumbo v0, "package"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 140
    .local v8, "packageName":Ljava/lang/String;
    const-string v0, "class"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 141
    .local v9, "className":Ljava/lang/String;
    const-string/jumbo v0, "shortcut"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 142
    .local v10, "shortcutName":Ljava/lang/String;
    const-string v0, "category"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 143
    .local v11, "categoryName":Ljava/lang/String;
    const-string/jumbo v0, "shift"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 145
    .local v7, "shiftName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_64} :catch_151
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_64} :catch_14c

    const-string v12, "/"

    if-eqz v0, :cond_83

    .line 146
    :try_start_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get shortcut for: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    goto :goto_1f

    .line 150
    :cond_83
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v14, v0

    .line 151
    .local v14, "shortcutChar":I
    if-eqz v7, :cond_96

    const-string/jumbo v0, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_68 .. :try_end_92} :catch_151
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_92} :catch_14c

    if-eqz v0, :cond_96

    move v0, v6

    goto :goto_97

    :cond_96
    move v0, v13

    :goto_97
    move v15, v0

    .line 155
    .local v15, "isShiftShortcut":Z
    const-string v13, "android.intent.action.MAIN"

    if-eqz v8, :cond_10e

    if-eqz v9, :cond_10e

    .line 156
    const/16 v17, 0x0

    .line 157
    .local v17, "info":Landroid/content/pm/ActivityInfo;
    :try_start_a0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_a5} :catch_151
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a5} :catch_14c

    move-object/from16 v18, v0

    .line 159
    .local v18, "componentName":Landroid/content/ComponentName;
    const v6, 0xc2000

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    .end local v18    # "componentName":Landroid/content/ComponentName;
    .local v5, "componentName":Landroid/content/ComponentName;
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_ae
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_b2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ae .. :try_end_b2} :catch_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ae .. :try_end_b2} :catch_151
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b2} :catch_14c

    .line 177
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_d4

    .line 163
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v17    # "info":Landroid/content/pm/ActivityInfo;
    :catch_b3
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v20, v18

    .line 164
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x1

    :try_start_b9
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v0, v6

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 166
    .local v16, "packages":[Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    aget-object v6, v16, v6

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b9 .. :try_end_cb} :catch_151
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_cb} :catch_14c

    move-object v5, v0

    .line 168
    const v6, 0xc2000

    :try_start_cf
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cf .. :try_end_d3} :catch_eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cf .. :try_end_d3} :catch_151
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d3} :catch_14c

    .line 176
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    nop

    .line 179
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_d4
    :try_start_d4
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v6, "intent":Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 183
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .local v0, "title":Ljava/lang/String;
    goto :goto_119

    .line 172
    .end local v0    # "title":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "packages":[Ljava/lang/String;
    .restart local v17    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_eb
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 173
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to add bookmark: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, v20

    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v3, v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    move-object/from16 v5, v19

    goto/16 :goto_1f

    .line 155
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :cond_10e
    move-object/from16 v19, v5

    .line 183
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v11, :cond_12f

    .line 184
    invoke-static {v13, v11}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v6, v0

    .line 185
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, ""

    .line 192
    .local v0, "title":Ljava/lang/String;
    :goto_119
    new-instance v5, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 193
    .local v5, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    if-eqz v15, :cond_126

    .line 194
    iget-object v12, v1, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v12, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12b

    .line 196
    :cond_126
    iget-object v12, v1, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v12, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    .end local v0    # "title":Ljava/lang/String;
    .end local v5    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "shiftName":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "shortcutName":Ljava/lang/String;
    .end local v11    # "categoryName":Ljava/lang/String;
    .end local v14    # "shortcutChar":I
    .end local v15    # "isShiftShortcut":Z
    :goto_12b
    move-object/from16 v5, v19

    goto/16 :goto_1f

    .line 187
    .restart local v7    # "shiftName":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v10    # "shortcutName":Ljava/lang/String;
    .restart local v11    # "categoryName":Ljava/lang/String;
    .restart local v14    # "shortcutChar":I
    .restart local v15    # "isShiftShortcut":Z
    :cond_12f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add bookmark for shortcut "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": missing package/class or category attributes"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d4 .. :try_end_148} :catch_151
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_148} :catch_14c

    .line 189
    move-object/from16 v5, v19

    goto/16 :goto_1f

    .line 201
    .end local v7    # "shiftName":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "shortcutName":Ljava/lang/String;
    .end local v11    # "categoryName":Ljava/lang/String;
    .end local v14    # "shortcutChar":I
    .end local v15    # "isShiftShortcut":Z
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_14c
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_156

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :catch_151
    move-exception v0

    .line 200
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_155
    nop

    .line 204
    :goto_156
    return-void
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .registers 10
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    move v1, v2

    .line 89
    .local v1, "isShiftOn":Z
    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    goto :goto_10

    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 92
    .local v2, "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    :goto_10
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v3

    .line 93
    .local v3, "shortcutChar":I
    if-eqz v3, :cond_1d

    .line 94
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 98
    :cond_1d
    if-nez v0, :cond_30

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 100
    if-eqz v3, :cond_30

    .line 101
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 107
    :cond_30
    if-nez v0, :cond_48

    .line 108
    const/4 v4, -0x1

    .line 109
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 110
    .local v4, "defaultKcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v4, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 111
    if-eqz v3, :cond_48

    .line 112
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 118
    .end local v4    # "defaultKcm":Landroid/view/KeyCharacterMap;
    :cond_48
    if-eqz v0, :cond_4d

    iget-object v4, v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_4e

    :cond_4d
    const/4 v4, 0x0

    :goto_4e
    return-object v4
.end method
