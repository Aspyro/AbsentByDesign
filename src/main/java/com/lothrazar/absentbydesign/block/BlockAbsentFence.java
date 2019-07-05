package com.lothrazar.absentbydesign.block;

import com.lothrazar.absentbydesign.IHasRecipe;
import net.minecraft.block.Block;
import net.minecraft.block.FenceBlock;
import net.minecraft.block.material.Material;
import net.minecraft.item.Item;
import net.minecraft.item.ItemStack;
import net.minecraft.item.Items;
import net.minecraft.item.crafting.IRecipe;

public class BlockAbsentFence extends FenceBlock  {
// implements IHasRecipe
  private ItemStack ingredient;

  public BlockAbsentFence(Block main, ItemStack i) {
    super(Block.Properties.create(Material.ROCK)
    .sound(main.getSoundType(null))
    .hardnessAndResistance(main.getBlockHardness(main.getDefaultState(), null, null)));


//    super(main.getMaterial(main.getDefaultState()), main.getMaterial(main.getDefaultState()).getMaterialMapColor());
//    this.setSoundType(main.getSoundType());
//    this.setHardness(main.getBlockHardness(main.getDefaultState(), null, null));
    ingredient = i;
  }

//  @Override
//  public IRecipe addRecipe() {
//    return RecipeRegistry.addShapedRecipe(new ItemStack(this, 3),
//        "sts",
//        "sts",
//        's', ingredient,
//        't', Items.STICK);
//  }
}
