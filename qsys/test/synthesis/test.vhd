-- test.vhd

-- Generated using ACDS version 15.0 145

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity test is
	port (
		clk_clk             : in std_logic := '0'; --         clk.clk
		reset_reset_n       : in std_logic := '0'; --       reset.reset_n
		spi_0_reset_reset_n : in std_logic := '0'  -- spi_0_reset.reset_n
	);
end entity test;

architecture rtl of test is
	component test_spi_0 is
		port (
			clk           : in  std_logic                     := 'X';             -- clk
			reset_n       : in  std_logic                     := 'X';             -- reset_n
			data_from_cpu : in  std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			data_to_cpu   : out std_logic_vector(15 downto 0);                    -- readdata
			mem_addr      : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- address
			read_n        : in  std_logic                     := 'X';             -- read_n
			spi_select    : in  std_logic                     := 'X';             -- chipselect
			write_n       : in  std_logic                     := 'X';             -- write_n
			irq           : out std_logic;                                        -- irq
			MISO          : in  std_logic                     := 'X';             -- export
			MOSI          : out std_logic;                                        -- export
			SCLK          : out std_logic;                                        -- export
			SS_n          : out std_logic                                         -- export
		);
	end component test_spi_0;

begin

	spi_0 : component test_spi_0
		port map (
			clk           => clk_clk,             --              clk.clk
			reset_n       => spi_0_reset_reset_n, --            reset.reset_n
			data_from_cpu => open,                -- spi_control_port.writedata
			data_to_cpu   => open,                --                 .readdata
			mem_addr      => open,                --                 .address
			read_n        => open,                --                 .read_n
			spi_select    => open,                --                 .chipselect
			write_n       => open,                --                 .write_n
			irq           => open,                --              irq.irq
			MISO          => open,                --         external.export
			MOSI          => open,                --                 .export
			SCLK          => open,                --                 .export
			SS_n          => open                 --                 .export
		);

end architecture rtl; -- of test
