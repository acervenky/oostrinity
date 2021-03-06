.class Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 338
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 426
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 503
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 504
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p2, 0x1

    .line 505
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 506
    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 508
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot instantiate class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SupportMenuInflater"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5

    .line 431
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 432
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 433
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 434
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 435
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 436
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 437
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 438
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 440
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    .line 441
    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    .line 450
    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 446
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 453
    :cond_3
    :goto_1
    instance-of v0, p1, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 454
    :cond_4
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    .line 456
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_2

    .line 457
    :cond_5
    instance-of v0, p1, Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_6

    .line 458
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    .line 463
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 464
    sget-object v1, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v2, v2, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 466
    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    .line 469
    :cond_7
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    .line 471
    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    if-eqz p0, :cond_a

    .line 479
    invoke-static {p1, p0}, Lcom/oneplus/support/core/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Lcom/oneplus/support/core/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_a
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 485
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 490
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 0

    .line 496
    iget-boolean p0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    return p0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 356
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    .line 357
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    .line 359
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    .line 360
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 362
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 363
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 365
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 375
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    .line 376
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_menuCategory:I

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 377
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_orderInCategory:I

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 378
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 380
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 381
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 382
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 383
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_alphabeticShortcut:I

    .line 384
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 385
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_numericShortcut:I

    .line 386
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 387
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_0

    .line 393
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 395
    :goto_0
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 396
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_visible:I

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 397
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_enabled:I

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 398
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 399
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 400
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 401
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 402
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 405
    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 406
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v2, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v3, v3, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/view/ActionProvider;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v2, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 411
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    .line 417
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 419
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    .line 343
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    .line 344
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    .line 345
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 347
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
